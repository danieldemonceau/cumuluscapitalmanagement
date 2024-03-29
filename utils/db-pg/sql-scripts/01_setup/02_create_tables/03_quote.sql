DROP TABLE IF EXISTS quote CASCADE;
CREATE TABLE IF NOT EXISTS quote (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    security_id INTEGER,
    time_interval_id INTEGER REFERENCES time_interval(id),
    timestamp TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    open MONEY NOT NULL,
    high MONEY NOT NULL,
    low MONEY NOT NULL,
    close MONEY NOT NULL,
    source_id INTEGER REFERENCES source(id),
    volume INTEGER CONSTRAINT constraint_quote_volume_positive CHECK (volume >= 0),
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null),
    CONSTRAINT constraint_quote_high_highest CHECK (
        high >= open
        AND high >= low
        AND high >= close
    ),
    CONSTRAINT constraint_quote_low_lowest CHECK (
        low <= open
        AND low <= high
        AND low <= close
    )
);
DROP TABLE IF EXISTS quote_history CASCADE;
CREATE TABLE quote_history (LIKE quote);
CREATE INDEX IF NOT EXISTS idx_quote_security_id ON quote(security_id);
CREATE INDEX IF NOT EXISTS idx_quote_time_interval_id ON quote(time_interval_id);
CREATE INDEX IF NOT EXISTS idx_quote_timestamp ON quote(timestamp);
CREATE INDEX IF NOT EXISTS idx_quote_open ON quote(open);
CREATE INDEX IF NOT EXISTS idx_quote_high ON quote(high);
CREATE INDEX IF NOT EXISTS idx_quote_low ON quote(low);
CREATE INDEX IF NOT EXISTS idx_quote_close ON quote(close);
CREATE INDEX IF NOT EXISTS idx_quote_source_id ON quote(source_id);
CREATE INDEX IF NOT EXISTS idx_quote_volume ON quote(volume);
CREATE INDEX IF NOT EXISTS idx_quote_sys_period ON quote(sys_period);