DROP DOMAIN IF EXISTS domain_transaction_type CASCADE;
CREATE DOMAIN domain_transaction_type TEXT
CONSTRAINT constraint_transaction_type_type_predefined NOT NULL
CHECK (VALUE IN ('Fund Deposit', 'Buy', 'Sell', 'Fund Withdrawal'));

DROP TABLE IF EXISTS transaction_type CASCADE;
CREATE TABLE IF NOT EXISTS transaction_type (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "type" domain_transaction_type,
    description TEXT,
    execution_timestamp TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    broker_id INTEGER REFERENCES broker(id),
    amount MONEY NOT NULL,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS transaction_type_history CASCADE;
CREATE TABLE transaction_type_history (LIKE transaction_type);

CREATE INDEX IF NOT EXISTS idx_transaction_type_type ON transaction_type("type");
CREATE INDEX IF NOT EXISTS idx_transaction_type_description ON transaction_type(description);
CREATE INDEX IF NOT EXISTS idx_transaction_type_execution_execution_timestamp ON transaction_type(execution_timestamp);
CREATE INDEX IF NOT EXISTS idx_transaction_type_broker_id ON transaction_type(broker_id);
CREATE INDEX IF NOT EXISTS idx_transaction_type_amount ON transaction_type(amount);
CREATE INDEX IF NOT EXISTS idx_transaction_type_sys_period ON transaction_type(sys_period);
