CREATE OR REPLACE FUNCTION market_transaction_insert_after()
RETURNS TRIGGER AS $$
    DECLARE
        v_id INTEGER = NEW.id;
        v_type domain_transaction_type = NEW.type;
        -- v_description TEXT = NEW.description;
        v_execution_timestamp TIMESTAMP WITH TIME ZONE = NEW.execution_timestamp;
        v_broker_id INTEGER = NEW.broker_id;
        v_amount MONEY = NEW.amount;
        v_direction domain_market_transaction_direction = NEW.direction;
        v_symbol_id INTEGER = NEW.symbol_id;
        v_nb_of_units DECIMAL = NEW.nb_of_units;

        v_position_id INTEGER;
        v_position_open_timestamp TIMESTAMP;

        v_position_amount_opened MONEY;
        v_position_amount_closed MONEY;
        v_position_nb_of_units_open DECIMAL;
    BEGIN
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'TRIGGER market_transaction_insert_after - START';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';

        -- Check if an existing position exists
        SELECT INTO 
            v_position_id
            , v_position_open_timestamp
            , v_position_amount_opened
            , v_position_amount_closed
            , v_position_nb_of_units_open
            
            po.id
            , po.open_timestamp
            , po.amount_opened
            , po.amount_closed
            , po.nb_of_units_open
        FROM position_open_get(v_direction, v_symbol_id, v_broker_id) po;

        -- If
        -- - There is an Open Position
        -- - THe current Market Transaction is a Closing transaction, and
        -- - All Units are to be closed
        -- Then Update the Position and provide all the necessary information to close
        IF v_position_id > 0
            AND (
                (v_direction = 'Long' AND v_type = 'Sell')
                OR (v_direction = 'Short' AND v_type = 'Buy')
            )
            AND (v_position_nb_of_units_open - v_nb_of_units = 0)
        THEN
            UPDATE position p
            SET status = 'Closed'
            , close_timestamp = COALESCE(v_execution_timestamp, CURRENT_TIMESTAMP(0))
            , holding_period_days = EXTRACT(DAY FROM COALESCE(v_execution_timestamp, CURRENT_TIMESTAMP(0)) - v_position_open_timestamp)
            , pl = (-1)*(v_position_amount_opened - (COALESCE(v_position_amount_closed, 0::MONEY) + v_amount))
            , pl_percent = ((((COALESCE(v_position_amount_closed, 0::MONEY) + v_amount) - v_position_amount_opened) / v_position_amount_opened) * 100.)::DECIMAL
            WHERE p.id = v_position_id;
        END IF;

        -- If the current Market Transaction opens a new position, do INSERT INTO
        IF COALESCE(v_position_id, 0) = 0
        THEN
            INSERT INTO position (status, open_timestamp)
            SELECT 'Open' status, COALESCE(v_execution_timestamp, CURRENT_TIMESTAMP) open_timestamp
            RETURNING id INTO v_position_id;
        END IF;

        -- Keep the Join Table up to date
        INSERT INTO position_market_transaction(position_id, market_transaction_id)
        SELECT v_position_id position_id, v_id market_transaction_id
        WHERE NOT EXISTS (
            SELECT pmt.id
            FROM position_market_transaction pmt
            WHERE 1 = 1
            AND pmt.position_id = v_position_id
            AND pmt.market_transaction_id = v_id
        );

        EXECUTE 'REFRESH MATERIALIZED VIEW cash_balance';

        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'TRIGGER market_transaction_insert_after - END';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER market_transaction_insert_after
AFTER INSERT
ON market_transaction
FOR EACH ROW EXECUTE FUNCTION market_transaction_insert_after();
