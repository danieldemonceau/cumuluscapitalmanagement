DROP DOMAIN IF EXISTS domain_interval_name CASCADE;
CREATE DOMAIN domain_interval_name TEXT
DEFAULT '1day'
CONSTRAINT constraint_interval_name_predefined NOT NULL
CHECK (VALUE IN ('1min', '5min', '15min', '30min', '45min', '60min', '1h', '2h', '4h', '1day', '1month', '1week'));

DROP TABLE IF EXISTS interval CASCADE;
CREATE TABLE IF NOT EXISTS interval (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name domain_interval_name,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS interval_history CASCADE;
CREATE TABLE interval_history (LIKE interval);

CREATE INDEX IF NOT EXISTS idx_interval_name ON interval(name);
CREATE INDEX IF NOT EXISTS idx_interval_sys_period ON interval(sys_period);
