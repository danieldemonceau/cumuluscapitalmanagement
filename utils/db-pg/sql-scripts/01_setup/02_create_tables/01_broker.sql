DROP TABLE IF EXISTS broker CASCADE;
CREATE TABLE IF NOT EXISTS broker(
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name text NOT NULL,
    description text,
    sys_period tstzrange NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), NULL)
);
DROP TABLE IF EXISTS broker_history CASCADE;
CREATE TABLE broker_history(LIKE broker);
CREATE INDEX IF NOT EXISTS idx_broker_name ON broker(name);
CREATE INDEX IF NOT EXISTS idx_broker_description ON broker(description);
CREATE INDEX IF NOT EXISTS idx_broker_sys_period ON broker(sys_period);