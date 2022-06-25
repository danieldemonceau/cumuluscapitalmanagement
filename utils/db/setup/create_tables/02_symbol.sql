DROP TABLE IF EXISTS symbol CASCADE;
CREATE TABLE IF NOT EXISTS symbol (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL,
    full_name TEXT NOT NULL,
    description TEXT,
    symbol_type_id INTEGER REFERENCES symbol_type(id),
    subindustry_id INTEGER REFERENCES subindustry(id),
    exchange_id INTEGER REFERENCES exchange(id),
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS symbol_history CASCADE;
CREATE TABLE symbol_history (LIKE symbol);

CREATE INDEX IF NOT EXISTS idx_symbol_name ON symbol(name);
CREATE INDEX IF NOT EXISTS idx_symbol_full_name ON symbol(full_name);
CREATE INDEX IF NOT EXISTS idx_symbol_description ON symbol(description);
CREATE INDEX IF NOT EXISTS idx_symbol_type_id ON symbol(symbol_type_id);
CREATE INDEX IF NOT EXISTS idx_symbol_subindustry_id ON subindustry(id);
CREATE INDEX IF NOT EXISTS idx_symbol_exchange_id ON exchange(id);
CREATE INDEX IF NOT EXISTS idx_symbol_sys_period ON symbol(sys_period);
