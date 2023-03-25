DROP TABLE IF EXISTS stock CASCADE;
CREATE TABLE IF NOT EXISTS stock (
    id INTEGER NOT NULL DEFAULT nextval('security_id') PRIMARY KEY,
    subindustry_id INTEGER REFERENCES subindustry(id)
) INHERITS ("security");
DROP TABLE IF EXISTS stock_history CASCADE;
CREATE TABLE stock_history (LIKE stock);

CREATE INDEX IF NOT EXISTS idx_stock_subindustry_id ON subindustry(id);
