DROP TABLE IF EXISTS etf CASCADE;
CREATE TABLE IF NOT EXISTS etf (
    id INTEGER NOT NULL DEFAULT nextval('security_id') PRIMARY KEY
) INHERITS ("security");
DROP TABLE IF EXISTS etf_history CASCADE;
CREATE TABLE etf_history (LIKE etf);
CREATE INDEX IF NOT EXISTS idx_etf_subindustry_id ON subindustry(id);