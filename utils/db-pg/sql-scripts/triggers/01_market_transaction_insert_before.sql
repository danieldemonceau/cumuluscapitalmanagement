CREATE OR REPLACE FUNCTION market_transaction_insert_before() RETURNS TRIGGER AS $$
    DECLARE
        v_direction domain_market_transaction_direction = NEW.direction;
        v_type domain_transaction_type = NEW."type";
        v_amount MONEY = NEW.amount;
        v_nb_of_units DECIMAL = NEW.nb_of_units;
        v_security_id INTEGER = NEW.security_id;
        v_broker_id INTEGER = NEW.broker_id;

        v_position_id INTEGER;
        v_position_nb_of_units_open INTEGER;

    BEGIN
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'TRIGGER market_transaction_insert_before - START';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';

        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'TRIGGER market_transaction_insert_before - END';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';

        -- For Opening Market Transactions (Long/Buy, and Short/Sell), verify if there are enough funds available
        IF (v_direction = 'Long' AND v_type = 'Buy') OR (v_direction = 'Short' AND v_type = 'Sell') THEN
            EXECUTE 'REFRESH MATERIALIZED VIEW cash_balance';
            -- Check if there are enough funds to withdraw from
            IF (
                (
                    SELECT COALESCE(cb.balance, 0::MONEY)
                    FROM cash_balance cb
                ) - ABS(v_amount::DECIMAL)::MONEY
                < 0::MONEY
            ) THEN
                RAISE EXCEPTION 'There are not enough Funds to Withdraw from';
            END IF;
        END IF;
        
        -- For Closing Market Transactions (Long/Sell, and Short/Buy), verify if there are enough units to close
        IF (v_direction = 'Long' AND v_type = 'Sell')
            OR (v_direction = 'Short' AND v_direction = 'Buy')
        THEN
            SELECT INTO v_position_id, v_position_nb_of_units_open
            po.id, po.nb_of_units_open
            FROM position_open_get(v_direction, v_security_id, v_broker_id) po;

            IF COALESCE(v_position_id, 0) = 0
            THEN
                RAISE EXCEPTION 'There are no Open Position for this Transaction';
            END IF;
        
            IF (v_position_nb_of_units_open - v_nb_of_units < 0) 
            THEN
                RAISE EXCEPTION 'There are not enough Units to Close the position from';
            END IF;
        END IF;
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER market_transaction_insert_before
BEFORE INSERT
ON market_transaction
FOR EACH ROW EXECUTE FUNCTION market_transaction_insert_before();
