-- Deposit Funds
INSERT INTO transaction(type, description, broker_id, amount)
SELECT 'Fund Deposit' type, 'For Testing Purposes' description, b.id broker_id, 12000::MONEY amount
FROM broker b
WHERE 1 = 1
AND b.name = 'etoro';

SELECT *
FROM cash_balance;

-- Withdraw Funds
INSERT INTO transaction(type, description, broker_id, amount)
SELECT 'Fund Withdrawal' type, 'For Testing Purposes' description, b.id broker_id, (-12000)::MONEY amount
FROM broker b
WHERE 1 = 1
AND b.name = 'etoro';

SELECT *
FROM cash_balance;
