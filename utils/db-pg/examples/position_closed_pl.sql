-- SELECT INTO v_position_nb_of_units_open, v_position_amount_open, v_position_nb_of_units_closed, v_position_amount_closed SUM(mt.nb_of_units_open) nb_of_units_open, SUM(mt.amount_open) amount_open

WITH market_transaction_open AS (
    SELECT p.id pid, (-1)*SUM(mt.nb_of_units) nb_of_units, (-1)*SUM(mt.amount) amount
    FROM position p
    JOIN position_market_transaction pmt ON pmt.position_id = p.id
    JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
    WHERE 1 = 1
    AND p.status = 'Closed'
    AND p."type" = 'Long'
    AND mt."type" = 'Buy'
    GROUP BY p.id

    UNION ALL

    SELECT p.id pid, (-1)*SUM(mt.nb_of_units) nb_of_units, (-1)*SUM(mt.amount) amount
    FROM position p
    JOIN position_market_transaction pmt ON pmt.position_id = p.id
    JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
    WHERE 1 = 1
    AND p.status = 'Closed'
    AND p."type" = 'Short'
    AND mt."type" = 'Sell'
    GROUP BY p.id
)
, market_transaction_closed AS (
    SELECT p.id pid, SUM(mt.nb_of_units) nb_of_units, SUM(mt.amount) amount
    FROM position p
    JOIN position_market_transaction pmt ON pmt.position_id = p.id
    JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
    WHERE 1 = 1
    AND p.status = 'Closed'
    AND p."type" = 'Long'
    AND mt."type" = 'Sell'
    GROUP BY p.id

    UNION ALL
    
    SELECT p.id pid, SUM(mt.nb_of_units) nb_of_units, SUM(mt.amount) amount
    FROM position p
    JOIN position_market_transaction pmt ON pmt.position_id = p.id
    JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
    WHERE 1 = 1
    AND p.status = 'Closed'
    AND p."type" = 'Short'
    AND mt."type" = 'Buy'
    GROUP BY p.id
)
SELECT mto.nb_of_units nb_of_units_open, mto.amount amount_open, mtc.nb_of_units nb_of_units_closed, mtc.amount amount_closed, mtt.nb_of_units nb_of_units_total, mtt.amount amount_total
FROM 
market_transaction_open mto
, market_transaction_closed mtc
, (
    SELECT SUM(mts.nb_of_units) nb_of_units, SUM(mts.amount) amount
    FROM (
        SELECT mto.pid, mto.nb_of_units, mto.amount
        FROM market_transaction_open mto
        UNION ALL
        SELECT mtc.pid, mtc.nb_of_units, mtc.amount
        FROM market_transaction_closed mtc
    ) mts
    GROUP BY mts.pid
) mtt;

