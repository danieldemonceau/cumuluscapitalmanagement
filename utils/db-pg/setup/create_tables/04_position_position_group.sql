DROP TABLE IF EXISTS position_position_group CASCADE;
CREATE TABLE IF NOT EXISTS position_position_group (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    position_group_id INTEGER REFERENCES position_group(id),
    position_id INTEGER REFERENCES position(id),
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS position_position_group_history CASCADE;
CREATE TABLE position_position_group_history (LIKE position_position_group);

CREATE INDEX IF NOT EXISTS idx_position_position_group_position_group_id ON position_position_group(position_group_id);
CREATE INDEX IF NOT EXISTS idx_position_position_group_position_id ON position_position_group(position_id);
CREATE INDEX IF NOT EXISTS idx_position_position_group_sys_period ON position_position_group(sys_period);
