DROP DOMAIN IF EXISTS domain_industry_group_name CASCADE;
CREATE DOMAIN domain_industry_group_name TEXT
CONSTRAINT constraint_industry_group_name_predefined NOT NULL
CHECK (VALUE IN ('Energy', 'Materials', 'Capital Goods', 'Commercial & Professional Services', 'Transportation', 'Automobiles & Components', 'Consumer Durables & Apparel', 'Consumer Services', 'Retailing', 'Food & Staples Retailing', 'Food Beverage & Tobacco', 'Household & Personal Products', 'Health Care Equipment & Services', 'Pharmaceuticals Biotechnology & Life Sciences', 'Banks', 'Diversified Financials', 'Insurance', 'Software & Services', 'Technology Hardware & Equipment', 'Semiconductors & Semiconductor Equipment', 'Telecommunication Services', 'Media & Entertainment', 'Utilities', 'Real Estate'));

DROP DOMAIN IF EXISTS domain_industry_group_code CASCADE;
CREATE DOMAIN domain_industry_group_code TEXT
CONSTRAINT constraint_industry_group_name_predefined NOT NULL
CHECK (VALUE ~ '^[0-9]{4}$');

DROP TABLE IF EXISTS industry_group CASCADE;
CREATE TABLE IF NOT EXISTS industry_group (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    code domain_industry_group_code,
    name domain_industry_group_name,
    sector_id INTEGER REFERENCES sector(id),
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS industry_group_history CASCADE;
CREATE TABLE industry_group_history (LIKE industry_group);

CREATE INDEX IF NOT EXISTS idx_industry_group_name ON industry_group(name);
CREATE INDEX IF NOT EXISTS idx_industry_group_sys_period ON industry_group(sys_period);
