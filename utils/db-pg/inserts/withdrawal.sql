-- FUNCTION for CLOSING positions
CREATE OR REPLACE FUNCTION c_withdrawal_insert(p_amount DECIMAL, p_broker_name TEXT, p_execution_datetime TSTZRANGE DEFAULT NOW())
RETURNS VOID
AS $$

    DECLARE
        p_amount_money MONEY = p_amount::MONEY;
    BEGIN
    
        PERFORM c_withdrawal_insert(p_amount_money);

    END;

$$ LANGUAGE plpgsql;

-- FUNCTION for CLOSING positions
CREATE OR REPLACE FUNCTION c_withdrawal_insert(p_amount MONEY, p_broker_name TEXT, p_execution_datetime TSTZRANGE DEFAULT NOW())
RETURNS VOID
AS $$

    DECLARE
    BEGIN

        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'FUNCTION c_withdrawal_insert - START';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';

        IF (
            (
                SELECT COUNT(*)
                FROM transaction_type t
            ) = 0
            OR NOT (
                SELECT (cb.cash + p_amount >= 0::MONEY)
                FROM cash_balance cb
            )
        )
        THEN 
            RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
            RAISE NOTICE 'FUNCTION c_withdrawal_insert - END';
            RAISE EXCEPTION 'There is no Open Trade for this Closing Order';
            RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        END IF;

        INSERT INTO transaction_type (transaction_type_id, description, execution_timestamp, broker_id, amount)
        SELECT tt.id transaction_type_id, '' description, p_execution_datetime execution_timestamp, b.id broker_id, -ABS(p_amount) amount
        FROM transaction_type tt
        , broker b
        , (
            SELECT cb.cash cash
            FROM cash_balance cb
        ) cb
        WHERE 1 = 1
        AND (cb.cash + p_amount >= 0::MONEY)
        AND tt.name = 'Withdrawal'
        AND b.name = p_broker_name;

        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'FUNCTION c_withdrawal_insert - END';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';

    END;

$$ LANGUAGE plpgsql;

SELECT *
FROM c_withdrawal_insert(-2000);

SELECT *
FROM c_withdrawal_insert((-2000)::MONEY);
