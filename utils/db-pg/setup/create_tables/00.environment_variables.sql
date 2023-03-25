DROP TABLE IF EXISTS environment_variables CASCADE;
CREATE TABLE IF NOT EXISTS environment_variables (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    key TEXT NOT NULL,
    value TEXT,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS environment_variables_history CASCADE;
CREATE TABLE environment_variables_history (LIKE environment_variables);

CREATE INDEX IF NOT EXISTS idx_environment_variables_name ON environment_variables(key);
CREATE INDEX IF NOT EXISTS idx_environment_variables_description ON environment_variables(value);
CREATE INDEX IF NOT EXISTS idx_environment_variables_sys_period ON environment_variables(sys_period);
