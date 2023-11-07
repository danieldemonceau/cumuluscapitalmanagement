DROP TABLE IF EXISTS position_market_transaction CASCADE;
CREATE TABLE IF NOT EXISTS position_market_transaction (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    position_id INTEGER REFERENCES position(id),
    market_transaction_id INTEGER REFERENCES market_transaction(id)
);
DROP TABLE IF EXISTS market_transaction_position_history CASCADE;
CREATE TABLE market_transaction_position_history (LIKE position_market_transaction);
CREATE INDEX IF NOT EXISTS idx_market_transaction_position_id ON position_market_transaction(position_id);
CREATE INDEX IF NOT EXISTS idx_market_transaction_id ON position_market_transaction(market_transaction_id);