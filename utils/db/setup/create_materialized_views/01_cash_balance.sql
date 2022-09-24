DROP MATERIALIZED VIEW IF EXISTS cash_balance CASCADE;
CREATE MATERIALIZED VIEW cash_balance AS
SELECT COALESCE(SUM(transaction_all.cash), 0::MONEY) balance
FROM (
    SELECT SUM(amount)::MONEY cash
    FROM transaction t
    WHERE t."type" = 'Fund Deposit'
    UNION
    SELECT SUM(amount*(-1))::MONEY cash
    FROM market_transaction mt
    WHERE mt."type" = 'Buy'
    UNION
    SELECT SUM(amount)::MONEY cash
    FROM market_transaction mt
    WHERE mt."type" = 'Sell'
    UNION
    SELECT SUM(amount*(-1))::MONEY cash
    FROM transaction t
    WHERE t."type" = 'Fund Withdrawal'
) transaction_all;

SELECT cb.balance
FROM cash_balance cb;
