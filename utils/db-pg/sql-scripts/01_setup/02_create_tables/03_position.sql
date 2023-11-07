DROP DOMAIN IF EXISTS domain_position_status CASCADE;
CREATE DOMAIN domain_position_status TEXT CONSTRAINT constraint_position_status_predefined NOT NULL CHECK (VALUE IN ('Open', 'Closed'));
DROP TABLE IF EXISTS position CASCADE;
CREATE TABLE IF NOT EXISTS position (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    status domain_position_status,
    open_timestamp TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    close_timestamp TIMESTAMP WITH TIME ZONE,
    holding_period_days INTEGER,
    pl MONEY,
    pl_percent DECIMAL,
    position_group_id INTEGER REFERENCES position_group(id)
);
DROP TABLE IF EXISTS position_history CASCADE;
CREATE TABLE position_history (LIKE position);
CREATE INDEX IF NOT EXISTS idx_position_status ON position(status);
CREATE INDEX IF NOT EXISTS idx_position_open_timestamp ON position(open_timestamp);
CREATE INDEX IF NOT EXISTS idx_position_close_timestamp ON position(close_timestamp);
CREATE INDEX IF NOT EXISTS idx_position_holding_period_days ON position(holding_period_days);
CREATE INDEX IF NOT EXISTS idx_position_pl ON position(pl);
CREATE INDEX IF NOT EXISTS idx_position_pl_percent ON position(pl_percent);
CREATE INDEX IF NOT EXISTS idx_position_position_group_id ON position(position_group_id);