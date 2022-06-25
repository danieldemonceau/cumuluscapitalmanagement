CREATE OR REPLACE FUNCTION trigger_transaction_insert_after() RETURNS TRIGGER AS $$
    DECLARE
    BEGIN
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'TRIGGER trigger_transaction_insert_after - START';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';

        EXECUTE 'REFRESH MATERIALIZED VIEW cash_balance';

        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'TRIGGER trigger_transaction_insert_after - END';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trigger_transaction_insert_after
AFTER INSERT
ON transaction
FOR EACH ROW EXECUTE FUNCTION trigger_transaction_insert_after();
