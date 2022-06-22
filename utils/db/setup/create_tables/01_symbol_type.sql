DROP DOMAIN IF EXISTS domain_symbol_type_name CASCADE;
CREATE DOMAIN domain_symbol_type_name TEXT
DEFAULT 'Stock'
CONSTRAINT constraint_symbol_type_name_predefined NOT NULL
CHECK (VALUE IN ('Stock', 'ETF', 'Crypto', 'Commodity', 'Indice', 'Currency'));

DROP TABLE IF EXISTS symbol_type CASCADE;
CREATE TABLE IF NOT EXISTS symbol_type (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name domain_symbol_type_name,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS symbol_type_history CASCADE;
CREATE TABLE symbol_type_history (LIKE symbol_type);

CREATE INDEX IF NOT EXISTS idx_symbol_type_name ON symbol_type(name);
CREATE INDEX IF NOT EXISTS idx_symbol_type_sys_period ON symbol_type(sys_period);
