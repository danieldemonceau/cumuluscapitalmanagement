DROP TABLE IF EXISTS "security" CASCADE;
CREATE TABLE IF NOT EXISTS "security" (
    id INTEGER NOT NULL DEFAULT nextval('security_id') PRIMARY KEY,
    name TEXT NOT NULL,
    full_name TEXT NOT NULL,
    description TEXT,
    security_type_id INTEGER REFERENCES security_type(id),
    exchange_id INTEGER REFERENCES exchange(id),
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS security_history CASCADE;
CREATE TABLE security_history (LIKE "security");

CREATE INDEX IF NOT EXISTS idx_security_name ON "security"(name);
CREATE INDEX IF NOT EXISTS idx_security_full_name ON "security"(full_name);
CREATE INDEX IF NOT EXISTS idx_security_description ON "security"(description);
CREATE INDEX IF NOT EXISTS idx_security_type_id ON "security"(security_type_id);
CREATE INDEX IF NOT EXISTS idx_security_exchange_id ON exchange(id);
CREATE INDEX IF NOT EXISTS idx_security_sys_period ON "security"(sys_period);
