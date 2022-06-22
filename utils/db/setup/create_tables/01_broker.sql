DROP TABLE IF EXISTS broker CASCADE;
CREATE TABLE IF NOT EXISTS broker (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS broker_history CASCADE;
CREATE TABLE broker_history (LIKE broker);

CREATE INDEX IF NOT EXISTS idx_market_transaction_name ON broker(name);
CREATE INDEX IF NOT EXISTS idx_market_transaction_description ON broker(description);
CREATE INDEX IF NOT EXISTS idx_market_transaction_sys_period ON broker(sys_period);
