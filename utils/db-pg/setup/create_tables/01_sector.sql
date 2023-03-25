DROP DOMAIN IF EXISTS domain_sector_name CASCADE;
CREATE DOMAIN domain_sector_name TEXT
CONSTRAINT constraint_sector_name_predefined NOT NULL
CHECK (VALUE IN ('Energy', 'Materials', 'Industrials', 'Consumer Discretionary', 'Consumer Staples', 'Health Care', 'Financials', 'Information Technology', 'Communication Services', 'Utilities', 'Real Estate'));

DROP DOMAIN IF EXISTS domain_sector_code CASCADE;
CREATE DOMAIN domain_sector_code TEXT
CONSTRAINT constraint_sector_name_predefined NOT NULL
CHECK (VALUE ~ '^[0-9]{2}$');

DROP TABLE IF EXISTS sector CASCADE;
CREATE TABLE IF NOT EXISTS sector (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    code domain_sector_code,
    name domain_sector_name,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS sector_history CASCADE;
CREATE TABLE sector_history (LIKE sector);

CREATE INDEX IF NOT EXISTS idx_sector_name ON sector(name);
CREATE INDEX IF NOT EXISTS idx_sector_sys_period ON sector(sys_period);
