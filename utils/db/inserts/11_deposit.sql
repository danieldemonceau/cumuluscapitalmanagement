INSERT INTO transaction(type, description, execution_timestamp, broker_id, amount)
SELECT 
    'Fund Deposit' "type"
    , 'First deposit' "description"
    , '2022-03-14' "execution_timestamp"
    , b.id "broker_id"
    , 20000::MONEY "amount"
FROM broker b
WHERE 1 = 1
AND b.name = 'etoro';
