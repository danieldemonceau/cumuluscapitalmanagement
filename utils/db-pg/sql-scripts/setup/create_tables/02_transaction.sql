DROP DOMAIN IF EXISTS domain_transaction_type CASCADE;
CREATE DOMAIN domain_transaction_type TEXT
CONSTRAINT constraint_transaction_type_type_predefined NOT NULL
CHECK (VALUE IN ('Fund Deposit', 'Buy', 'Sell', 'Fund Withdrawal'));

DROP TABLE IF EXISTS transaction CASCADE;
CREATE TABLE IF NOT EXISTS transaction (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "type" domain_transaction_type,
    description TEXT,
    execution_timestamp TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    broker_id INTEGER REFERENCES broker(id),
    amount MONEY NOT NULL,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS transaction_type_history CASCADE;
CREATE TABLE transaction_type_history (LIKE transaction);

CREATE INDEX IF NOT EXISTS idx_transaction_type_type ON transaction("type");
CREATE INDEX IF NOT EXISTS idx_transaction_type_description ON transaction(description);
CREATE INDEX IF NOT EXISTS idx_transaction_type_execution_execution_timestamp ON transaction(execution_timestamp);
CREATE INDEX IF NOT EXISTS idx_transaction_type_broker_id ON transaction(broker_id);
CREATE INDEX IF NOT EXISTS idx_transaction_type_amount ON transaction(amount);
CREATE INDEX IF NOT EXISTS idx_transaction_type_sys_period ON transaction(sys_period);
