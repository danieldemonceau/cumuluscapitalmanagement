DROP TABLE IF EXISTS exchange CASCADE;
CREATE TABLE IF NOT EXISTS exchange (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL,
    city TEXT NOT NULL,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS exchange_history CASCADE;
CREATE TABLE exchange_history (LIKE exchange);

CREATE INDEX IF NOT EXISTS idx_exchange_name ON exchange(name);
CREATE INDEX IF NOT EXISTS idx_exchange_city ON exchange(city);
CREATE INDEX IF NOT EXISTS idx_exchange_sys_period ON exchange(sys_period);
