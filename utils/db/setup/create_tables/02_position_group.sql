DROP TABLE IF EXISTS position_group CASCADE;
CREATE TABLE IF NOT EXISTS position_group (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS position_group_history CASCADE;
CREATE TABLE position_group_history (LIKE position_group);

CREATE INDEX IF NOT EXISTS idx_position_group_name ON position_group(name);
CREATE INDEX IF NOT EXISTS idx_position_group_description ON position_group(description);
CREATE INDEX IF NOT EXISTS idx_position_group_sys_period ON position_group(sys_period);
