CREATE OR REPLACE FUNCTION position_closed_get(
    p_direction domain_market_transaction_direction,
    p_security_id INTEGER,
    p_broker_id INTEGER
)
RETURNS TABLE (
    id INTEGER,
    status DOMAIN_POSITION_STATUS,
    direction domain_market_transaction_direction,
    security_name TEXT,
    
    open_timestamp TIMESTAMP WITH TIME ZONE,
    close_timestamp TIMESTAMP WITH TIME ZONE,
    holding_period_days INTEGER,

    nb_of_units_opened DECIMAL, 
    amount_opened MONEY, 
    nb_of_units_closed DECIMAL, 
    amount_closed MONEY, 
    nb_of_units_open DECIMAL, 
    amount_open MONEY,

    pl MONEY,
    pl_percent DECIMAL,
    position_group_name TEXT
)
AS $$

    DECLARE
        v_position_id INTEGER;
    BEGIN

        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'FUNCTION position_closed_get - START';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';

        RETURN QUERY
        SELECT 
        p.id id,
        p.status status, 
        mt.direction direction, 
        s.name security_name, 
        p.open_timestamp open_timestamp, 
        p.close_timestamp close_timestamp,
        EXTRACT(DAY FROM COALESCE(p.close_timestamp, CURRENT_TIMESTAMP(0)) - p.open_timestamp)::INTEGER holding_period_days,

        pl.nb_of_units_opened nb_of_units_opened,
        pl.amount_opened amount_opened,
        pl.nb_of_units_closed nb_of_units_closed,
        pl.amount_closed amount_closed,
        pl.nb_of_units_open nb_of_units_open,
        pl.amount_open amount_open,
        
        (-1.)*(pl.amount_opened - pl.amount_closed) pl, 
        (-1.)*((pl.amount_opened - pl.amount_closed) / pl.amount_opened * 100.)::DECIMAL pl_percent,
        pg.name
        FROM position p
        JOIN position_market_transaction pmt ON pmt.position_id = p.id
        JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
        JOIN security s ON s.id = mt.security_id
        JOIN broker b ON b.id = mt.broker_id
        LEFT JOIN position_group pg ON pg.id = p.position_group_id
        JOIN (
            WITH market_transaction_open AS (
                SELECT p.id pid
                , SUM(mt.nb_of_units) nb_of_units
                , SUM(mt.amount) amount
                FROM position p
                JOIN position_market_transaction pmt ON pmt.position_id = p.id
                JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
                WHERE 1 = 1
                AND p.status = 'Closed'
                AND mt.direction = p_direction
                AND mt."type" = CASE WHEN p_direction = 'Long' THEN 'Buy' WHEN p_direction = 'Short' THEN 'Sell' END
                GROUP BY p.id

                UNION ALL
                
                SELECT NULL pid
                , NULL nb_of_units
                , NULL amount
            )
            , market_transaction_closed AS (
                SELECT p.id pid
                , SUM(mt.nb_of_units) nb_of_units
                , SUM(mt.amount) amount
                FROM position p
                JOIN position_market_transaction pmt ON pmt.position_id = p.id
                JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
                WHERE 1 = 1
                AND p.status = 'Closed'
                AND mt.direction = p_direction
                AND mt."type" = CASE WHEN p_direction = 'Long' THEN 'Sell' WHEN p_direction = 'Short' THEN 'Buy' END
                GROUP BY p.id

                UNION ALL
                
                SELECT NULL pid
                , NULL nb_of_units
                , NULL amount
            )
            SELECT mto.pid pid, mto.nb_of_units nb_of_units_opened, mto.amount amount_opened, mtc.nb_of_units nb_of_units_closed, mtc.amount amount_closed, mtt.nb_of_units nb_of_units_open, mtt.amount amount_open
            FROM market_transaction_open mto
            LEFT JOIN market_transaction_closed mtc ON mtc.pid = mto.pid
            JOIN (
                SELECT mts.pid, SUM(mts.nb_of_units) nb_of_units, SUM(mts.amount) amount
                FROM (
                    SELECT mto.pid, mto.nb_of_units, mto.amount
                    FROM market_transaction_open mto
                    UNION ALL
                    SELECT mtc.pid, (-1.)*mtc.nb_of_units, (-1.)*mtc.amount
                    FROM market_transaction_closed mtc
                ) mts
                GROUP BY mts.pid
            ) mtt ON (mtt.pid = mtc.pid) OR (mtt.pid = mto.pid)
        ) pl ON pl.pid = p.id
        WHERE 1 = 1
        AND p.status = 'Closed'
        AND mt.direction = p_direction
        AND s.id = p_security_id
        AND b.id = p_broker_id
        GROUP BY 
            p.id
            , p.status
            , mt.direction 
            , s.name 
            , p.open_timestamp 
            , p.close_timestamp
            , pl.nb_of_units_opened
            , pl.amount_opened
            , pl.nb_of_units_closed
            , pl.amount_closed
            , pl.nb_of_units_open
            , pl.amount_open
            , pg.name
        ;

        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'FUNCTION position_closed_get - END';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';

    END;

$$ LANGUAGE plpgsql;



CREATE OR REPLACE FUNCTION position_closed_get(
    p_id INTEGER
)
RETURNS TABLE (
    id INTEGER,
    status DOMAIN_POSITION_STATUS,
    direction domain_market_transaction_direction,
    security_name TEXT,
    
    open_timestamp TIMESTAMP WITH TIME ZONE,
    close_timestamp TIMESTAMP WITH TIME ZONE,
    holding_period_days INTEGER,

    nb_of_units_opened DECIMAL, 
    amount_opened MONEY, 
    nb_of_units_closed DECIMAL, 
    amount_closed MONEY, 
    nb_of_units_open DECIMAL, 
    amount_open MONEY,

    pl MONEY,
    pl_percent DECIMAL,
    position_group_name TEXT
)
AS $$

    DECLARE
        v_position_id INTEGER;
    BEGIN

        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'FUNCTION position_closed_get - START';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';

        RETURN QUERY
        SELECT 
        p.id id,
        p.status status, 
        mt.direction direction, 
        s.name security_name, 
        p.open_timestamp open_timestamp, 
        p.close_timestamp close_timestamp,
        EXTRACT(DAY FROM COALESCE(p.close_timestamp, CURRENT_TIMESTAMP(0)) - p.open_timestamp)::INTEGER holding_period_days,

        pl.nb_of_units_opened nb_of_units_opened,
        pl.amount_opened amount_opened,
        pl.nb_of_units_closed nb_of_units_closed,
        pl.amount_closed amount_closed,
        pl.nb_of_units_open nb_of_units_open,
        pl.amount_open amount_open,
        
        (-1.)*(pl.amount_opened - pl.amount_closed) pl, 
        (-1.)*((pl.amount_opened - pl.amount_closed) / pl.amount_opened * 100.)::DECIMAL pl_percent,
        pg.name
        FROM position p
        JOIN position_market_transaction pmt ON pmt.position_id = p.id
        JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
        JOIN security s ON s.id = mt.security_id
        LEFT JOIN position_group pg ON pg.id = p.position_group_id
        JOIN (
            WITH market_transaction_open AS (
                SELECT p.id pid
                , SUM(mt.nb_of_units) nb_of_units
                , SUM(mt.amount) amount
                FROM position p
                JOIN position_market_transaction pmt ON pmt.position_id = p.id
                JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
                WHERE 1 = 1
                AND p.status = 'Closed'
                AND mt.direction = 'Long'
                AND mt."type" = 'Buy'
                AND p.id = p_id
                GROUP BY p.id

                UNION ALL

                SELECT p.id pid
                , SUM(mt.nb_of_units) nb_of_units
                , SUM(mt.amount) amount
                FROM position p
                JOIN position_market_transaction pmt ON pmt.position_id = p.id
                JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
                WHERE 1 = 1
                AND p.status = 'Closed'
                AND mt.direction = 'Short'
                AND mt."type" = 'Sell'
                AND p.id = p_id
                GROUP BY p.id

                UNION ALL
                
                SELECT NULL pid
                , NULL nb_of_units
                , NULL amount
            )
            , market_transaction_closed AS (
                SELECT p.id pid
                , SUM(mt.nb_of_units) nb_of_units
                , SUM(mt.amount) amount
                FROM position p
                JOIN position_market_transaction pmt ON pmt.position_id = p.id
                JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
                WHERE 1 = 1
                AND p.status = 'Closed'
                AND mt.direction = 'Long'
                AND mt."type" = 'Sell'
                AND p.id = p_id
                GROUP BY p.id

                UNION ALL
                
                SELECT p.id pid
                , SUM(mt.nb_of_units) nb_of_units
                , SUM(mt.amount) amount
                FROM position p
                JOIN position_market_transaction pmt ON pmt.position_id = p.id
                JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
                WHERE 1 = 1
                AND p.id = p_id
                AND p.status = 'Closed'
                AND mt.direction = 'Short'
                AND mt."type" = 'Buy'
                GROUP BY p.id

                UNION ALL
                
                SELECT NULL pid
                , NULL nb_of_units
                , NULL amount
            )
            SELECT mto.pid pid, mto.nb_of_units nb_of_units_opened, mto.amount amount_opened, mtc.nb_of_units nb_of_units_closed, mtc.amount amount_closed, mtt.nb_of_units nb_of_units_open, mtt.amount amount_open
            FROM market_transaction_open mto
            LEFT JOIN market_transaction_closed mtc ON mtc.pid = mto.pid
            JOIN (
                SELECT mts.pid, SUM(mts.nb_of_units) nb_of_units, SUM(mts.amount) amount
                FROM (
                    SELECT mto.pid, mto.nb_of_units, mto.amount
                    FROM market_transaction_open mto
                    UNION ALL
                    SELECT mtc.pid, (-1.)*mtc.nb_of_units, (-1.)*mtc.amount
                    FROM market_transaction_closed mtc
                ) mts
                GROUP BY mts.pid
            ) mtt ON (mtt.pid = mtc.pid) OR (mtt.pid = mto.pid)
        ) pl ON pl.pid = p.id
        WHERE 1 = 1
        AND p.status = 'Closed'
        AND p.id = p_id
        GROUP BY 
            p.id
            , p.status
            , mt.direction 
            , s.name 
            , p.open_timestamp 
            , p.close_timestamp
            , pl.nb_of_units_opened
            , pl.amount_opened
            , pl.nb_of_units_closed
            , pl.amount_closed
            , pl.nb_of_units_open
            , pl.amount_open
            , pg.name
        ;

        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';
        RAISE NOTICE 'FUNCTION position_closed_get - END';
        RAISE NOTICE '- - - - - - - - - - - - - - - - - - - - - ';

    END;

$$ LANGUAGE plpgsql;
