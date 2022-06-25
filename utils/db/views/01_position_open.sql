DROP VIEW position_open;
CREATE OR REPLACE VIEW position_open AS

SELECT 
p.id id,
p.status "Position Status", 
mt.direction "Position Type", 
s.name "Asset", 
p.open_timestamp open_timestamp, 
p.close_timestamp close_timestamp,
pl.nb_of_units_opened nb_of_units_opened,
pl.amount_opened amount_opened,
pl.nb_of_units_closed nb_of_units_closed,
pl.amount_closed amount_closed,
pl.nb_of_units_open nb_of_units_open,
pl.amount_open amount_open,
EXTRACT(DAY FROM COALESCE(close_timestamp, CURRENT_TIMESTAMP(0)) - open_timestamp) holding_period_days,
(pl.amount_opened - pl.amount_closed) pl, 
(pl.amount_opened - pl.amount_closed) / pl.amount_opened * 100. pl_percent
FROM position p
JOIN position_market_transaction pmt ON pmt.position_id = p.id
JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
JOIN symbol s ON s.id = mt.symbol_id
JOIN (
    WITH market_transaction_open AS (
        SELECT p.id pid
        , SUM(mt.nb_of_units) nb_of_units
        , SUM(mt.amount) amount
        FROM position p
        JOIN position_market_transaction pmt ON pmt.position_id = p.id
        JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
        WHERE 1 = 1
        -- AND p.status = 'Closed'
        AND mt.direction = 'Long'
        AND mt.type = 'Buy'
        GROUP BY p.id

        UNION ALL

        SELECT p.id pid
        , SUM(mt.nb_of_units) nb_of_units
        , SUM(mt.amount) amount
        FROM position p
        JOIN position_market_transaction pmt ON pmt.position_id = p.id
        JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
        WHERE 1 = 1
        -- AND p.status = 'Closed'
        AND mt.direction = 'Short'
        AND mt.type = 'Sell'
        GROUP BY p.id

        UNION ALL
        
        SELECT NULL pid
        , NULL nb_of_units
        , NULL amount
    )
    , market_transaction_closed AS (
        SELECT p.id pid
        , (-1)*SUM(mt.nb_of_units) nb_of_units
        , (-1)*SUM(mt.amount) amount
        FROM position p
        JOIN position_market_transaction pmt ON pmt.position_id = p.id
        JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
        WHERE 1 = 1
        -- AND p.status = 'Closed'
        AND mt.direction = 'Long'
        AND mt.type = 'Sell'
        GROUP BY p.id

        UNION ALL
        
        SELECT p.id pid
        , (-1)*SUM(mt.nb_of_units) nb_of_units
        , (-1)*SUM(mt.amount) amount
        FROM position p
        JOIN position_market_transaction pmt ON pmt.position_id = p.id
        JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
        WHERE 1 = 1
        -- AND p.status = 'Closed'
        AND mt.direction = 'Short'
        AND mt.type = 'Buy'
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
            SELECT mtc.pid, mtc.nb_of_units, mtc.amount
            FROM market_transaction_closed mtc
        ) mts
        GROUP BY mts.pid
    ) mtt ON (mtt.pid = mtc.pid) OR (mtt.pid = mto.pid)
) pl ON pl.pid = p.id
WHERE p.status = 'Open'
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
;
