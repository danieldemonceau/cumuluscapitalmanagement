-- FUNCTION for CLOSING positions
CREATE OR REPLACE FUNCTION trigger_transaction_insert_before()
RETURNS TRIGGER AS $$

    DECLARE
        v_type TEXT = NEW."type";
        v_amount MONEY = NEW.amount;
    BEGIN
        
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'TRIGGER trigger_transaction_insert_before - START';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';

        IF v_type = 'Fund Deposit'
        THEN
            IF v_amount < 0::MONEY
            THEN
                RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
                RAISE NOTICE 'TRIGGER trigger_transaction_insert_before - END';
                RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
                RAISE EXCEPTION 'Please provide a positive value for Fundings';
            END IF;
            RETURN NEW;
        END IF;

        IF v_type = 'Fund Withdrawal'
        THEN
            IF v_amount > 0::MONEY
            THEN
                RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
                RAISE NOTICE 'TRIGGER trigger_transaction_insert_before - END';
                RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
                RAISE EXCEPTION 'Please provide a negative value for Withdrawals';
            END IF;
            EXECUTE 'REFRESH MATERIALIZED VIEW cash_balance';
            -- Check if there are enough funds to withdraw from
            IF (
                (
                    SELECT COALESCE(cb.cash, 0::MONEY)
                    FROM cash_balance cb
                ) + v_amount
                < 0::MONEY
            )
            THEN
                RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
                RAISE NOTICE 'TRIGGER trigger_transaction_insert_before - END';
                RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
                RAISE EXCEPTION 'There is not enough Funds to Withdraw from';
            END IF;
            NEW.amount = v_amount;
            RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
            RAISE NOTICE 'TRIGGER trigger_transaction_insert_before - END';
            RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        END IF;

        RETURN NEW;

    END;

$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trigger_transaction_insert_before
BEFORE INSERT
ON transaction
FOR EACH ROW EXECUTE FUNCTION trigger_transaction_insert_before();
