DROP VIEW position_get_market_transactions;
CREATE OR REPLACE VIEW position_get_market_transactions AS

SELECT
p.id pid
, mt.id mtid
, mt.type mttype
, mt.description mtdescription
, mt.execution_timestamp mtexecution_timestamp
, mt.broker_id mtbroker_id
, mt.amount mtamount
, mt.sys_period mtsys_period
, mt.direction mtdirection
, mt.symbol_id mtsymbol_id
, mt.price_per_asset mtprice_per_asset
, mt.nb_of_units mtnb_of_units
FROM position p
JOIN position_market_transaction pmt ON pmt.position_id = p.id
JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
WHERE 1 = 1
ORDER BY execution_timestamp ASC;
