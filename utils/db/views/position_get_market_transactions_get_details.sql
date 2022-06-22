DROP VIEW position_get_market_transactions_get_details;
CREATE OR REPLACE VIEW position_get_market_transactions_get_details AS

SELECT
p.id pid
, mt.id mtid
, mt.type mttype
, mt.description mtdescription
, mt.execution_timestamp mtexecution_timestamp
, b.name bname
, mt.amount mtamount
, mt.sys_period mtsys_period
, mt.direction mtdirection
, s.name sname
, mt.price_per_asset mtprice_per_asset
, mt.nb_of_units mtnb_of_units
FROM position p
JOIN position_market_transaction pmt ON pmt.position_id = p.id
JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
JOIN broker b ON b.id = mt.broker_id
JOIN symbol s ON s.id = mt.symbol_id
WHERE 1 = 1
ORDER BY execution_timestamp ASC;
