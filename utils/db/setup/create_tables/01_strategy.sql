DROP DOMAIN IF EXISTS domain_strategy_name CASCADE;
CREATE DOMAIN domain_strategy_name TEXT
CONSTRAINT constraint_strategy_name_predefined NOT NULL
CHECK (VALUE IN ('Market Dollar-Cost Averaging', 'Magic Formula', 'The Acquirer''s Multiple'));

DROP TABLE IF EXISTS strategy CASCADE;
CREATE TABLE IF NOT EXISTS strategy (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name domain_strategy_name,
    description TEXT,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS strategy_history CASCADE;
CREATE TABLE strategy_history (LIKE strategy);

CREATE INDEX IF NOT EXISTS strategy_name ON strategy(name);
CREATE INDEX IF NOT EXISTS strategy_description ON strategy(description);
CREATE INDEX IF NOT EXISTS strategy_sys_period ON strategy(sys_period);
