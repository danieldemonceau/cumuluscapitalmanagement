DROP DOMAIN IF EXISTS domain_time_interval_name CASCADE;
CREATE DOMAIN domain_time_interval_name TEXT DEFAULT '1day' CONSTRAINT constraint_time_interval_name_predefined NOT NULL CHECK (
    VALUE IN (
        '1min',
        '5min',
        '15min',
        '30min',
        '45min',
        '60min',
        '1h',
        '2h',
        '4h',
        '1day',
        '1month',
        '1week'
    )
);
DROP TABLE IF EXISTS time_interval CASCADE;
CREATE TABLE IF NOT EXISTS time_interval (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name domain_time_interval_name,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS time_interval_history CASCADE;
CREATE TABLE time_interval_history (LIKE time_interval);
CREATE INDEX IF NOT EXISTS idx_time_interval_name ON time_interval(name);
CREATE INDEX IF NOT EXISTS idx_time_interval_sys_period ON time_interval(sys_period);