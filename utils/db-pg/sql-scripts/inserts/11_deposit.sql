;

INSERT INTO transaction_type("type", description, execution_timestamp, broker_id, amount)
SELECT
    'Fund Deposit' "type",
    'First deposit' "description",
    '2022-09-14' "execution_timestamp",
    b.id "broker_id",
    40000::money "amount"
FROM
    broker b
WHERE
    1 = 1
    AND b.name = 'etoro';

