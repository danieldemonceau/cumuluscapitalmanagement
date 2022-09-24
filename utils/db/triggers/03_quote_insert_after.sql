CREATE OR REPLACE FUNCTION trigger_quote_insert_after() RETURNS TRIGGER AS $$
    DECLARE
        v_quote_close DECIMAL = NEW.close;
        v_quote_security_id INTEGER = NEW.security_id;
    BEGIN
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'TRIGGER trigger_quote_insert_after - START';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';

        UPDATE position p
        SET pl_percent = (v_quote_close - po.average_price_open) / po.average_price_open
        FROM position_open po
        JOIN position_market_transaction pmt ON pmt.position_id = po.id
        JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
        JOIN security s ON s.id = mt.security_id
        WHERE 1 = 1
        AND po.id = p.id
        AND p.id = pmt.position_id
        AND s.id = v_quote_security_id;

        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'TRIGGER trigger_quote_insert_after - END';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trigger_quote_insert_after
AFTER INSERT
ON quote
FOR EACH ROW EXECUTE FUNCTION trigger_quote_insert_after();
