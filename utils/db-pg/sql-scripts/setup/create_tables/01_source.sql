DROP TABLE IF EXISTS source CASCADE;
CREATE TABLE IF NOT EXISTS source (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS source_history CASCADE;
CREATE TABLE source_history (LIKE source);

CREATE INDEX IF NOT EXISTS idx_source_name ON source(name);
CREATE INDEX IF NOT EXISTS idx_source_sys_period ON source(sys_period);