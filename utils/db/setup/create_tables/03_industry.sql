DROP DOMAIN IF EXISTS domain_industry_name CASCADE;
CREATE DOMAIN domain_industry_name TEXT
CONSTRAINT constraint_industry_name_predefined NOT NULL
CHECK (VALUE IN ('Energy Equipment & Services', 'Oil Gas & Consumable Fuels', 'Chemicals', 'Construction Materials', 'Containers & Packaging', 'Metals & Mining', 'Paper & Forest Products', 'Aerospace & Defense', 'Building Products', 'Construction & Engineering', 'Electrical Equipment', 'Industrial Conglomerates', 'Machinery', 'Trading Companies & Distributors', 'Commercial Services & Supplies', 'Professional Services', 'Air Freight & Logistics', 'Airlines', 'Marine', 'Road & Rail', 'Transportation Infrastructure', 'Auto Components', 'Automobiles', 'Household Durables', 'Leisure Products', 'Textiles Apparel & Luxury Goods', 'Hotels Restaurants & Leisure', 'Diversified Consumer Services', 'Distributors', 'Internet & Direct Marketing Retail', 'Multiline Retail', 'Specialty Retail', 'Food & Staples Retailing', 'Beverages', 'Food Products', 'Tobacco', 'Household Products', 'Personal Products', 'Health Care Equipment & Supplies', 'Health Care Providers & Services', 'Health Care Technology', 'Biotechnology', 'Pharmaceuticals', 'Life Sciences Tools & Services', 'Banks', 'Thrifts & Mortgage Finance', 'Diversified Financial Services', 'Consumer Finance', 'Capital Markets', 'Mortgage Real Estate Investment Trusts (REITs)', 'Insurance', 'IT Services', 'Software', 'Communications Equipment', 'Technology Hardware Storage & Peripherals', 'Electronic Equipment Instruments & Components', 'Semiconductors & Semiconductor Equipment', 'Diversified Telecommunication Services', 'Wireless Telecommunication Services', 'Media', 'Entertainment', 'Interactive Media & Services', 'Electric Utilities', 'Gas Utilities', 'Multi-Utilities', 'Water Utilities', 'Independent Power and Renewable Electricity Producers', 'Equity Real Estate Investment Trusts (REITs)', 'Real Estate Management & Development'));

DROP DOMAIN IF EXISTS domain_industry_code CASCADE;
CREATE DOMAIN domain_industry_code TEXT
CONSTRAINT constraint_industry_name_predefined NOT NULL
CHECK (VALUE ~ '^[0-9]{6}$');

DROP TABLE IF EXISTS industry CASCADE;
CREATE TABLE IF NOT EXISTS industry (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    code domain_industry_code,
    name domain_industry_name,
    industry_group_id INTEGER REFERENCES industry_group(id),
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS industry_history CASCADE;
CREATE TABLE industry_history (LIKE industry);

CREATE INDEX IF NOT EXISTS idx_industry_name ON industry(name);
CREATE INDEX IF NOT EXISTS idx_industry_sys_period ON industry(sys_period);
