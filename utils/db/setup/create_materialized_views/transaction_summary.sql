DROP MATERIALIZED VIEW IF EXISTS transaction_summary CASCADE;
CREATE MATERIALIZED VIEW transaction_summary AS

SELECT tid id, ttype "Transaction", tdescription "Description", texecution_timestamp "Timestamp", bname "Broker", cash_flow "Cash Flow", mt_price_per_asset "Price per Asset", mtnb_of_units "Nb of Units", ptype "Long/Short"
FROM (
    SELECT t.id tid, t.type ttype, t.description tdescription, t.execution_timestamp texecution_timestamp, b.name bname, t.amount cash_flow, NULL mt_price_per_asset, NULL mtnb_of_units, NULL ptype
    FROM transaction t
    JOIN broker b ON b.id = t.broker_id
    WHERE t.type = 'Fund Deposit'
    UNION
    SELECT mt.id tid, mt.type ttype, mt.description tdescription, mt.execution_timestamp texecution_timestamp, b.name bname, (-1)*mt.amount cash_flow, mt.price_per_asset mt_price_per_asset, mt.nb_of_units mtnb_of_units, p.type ptype
    FROM market_transaction mt
    JOIN broker b ON b.id = mt.broker_id
    JOIN position_market_transaction pmt ON pmt.market_transaction_id = mt.id
    JOIN position p ON p.id = pmt.position_id
    WHERE mt.type = 'Buy'
    UNION
    SELECT mt.id tid, mt.type ttype, mt.description tdescription, mt.execution_timestamp texecution_timestamp, b.name bname, mt.amount cash_flow, mt.price_per_asset mt_price_per_asset, mt.nb_of_units mtnb_of_units, p.type ptype
    FROM market_transaction mt
    JOIN broker b ON b.id = mt.broker_id
    JOIN position_market_transaction pmt ON pmt.market_transaction_id = mt.id
    JOIN position p ON p.id = pmt.position_id
    WHERE mt.type = 'Sell'
    UNION
    SELECT t.id tid, t.type ttype, t.description tdescription, t.execution_timestamp texecution_timestamp, b.name bname, (-1)*t.amount cash_flow, NULL mt_price_per_asset, NULL mtnb_of_units, NULL ptype
    FROM transaction t
    JOIN broker b ON b.id = t.broker_id
    WHERE t.type = 'Fund Withdrawal'
) t
ORDER BY texecution_timestamp DESC
;

SELECT *
FROM transaction_summary;
