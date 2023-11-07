DROP DOMAIN IF EXISTS domain_security_type_name CASCADE;
CREATE DOMAIN domain_security_type_name TEXT DEFAULT 'Stock' CONSTRAINT constraint_security_type_name_predefined NOT NULL CHECK (
    VALUE IN (
        'Stock',
        'ETF',
        'Crypto',
        'Commodity',
        'Indice',
        'Currency'
    )
);
DROP TABLE IF EXISTS security_type CASCADE;
CREATE TABLE IF NOT EXISTS security_type (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name domain_security_type_name,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS security_type_history CASCADE;
CREATE TABLE security_type_history (LIKE security_type);
CREATE INDEX IF NOT EXISTS idx_security_type_name ON security_type(name);
CREATE INDEX IF NOT EXISTS idx_security_type_sys_period ON security_type(sys_period);