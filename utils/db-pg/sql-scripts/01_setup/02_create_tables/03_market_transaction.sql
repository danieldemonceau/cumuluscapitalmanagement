DROP DOMAIN IF EXISTS domain_market_transaction_direction CASCADE;
CREATE DOMAIN domain_market_transaction_direction TEXT CONSTRAINT constraint_market_transaction_direction_predefined NOT NULL CHECK (VALUE IN ('Long', 'Short'));
DROP TABLE IF EXISTS market_transaction CASCADE;
CREATE TABLE IF NOT EXISTS market_transaction (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    direction domain_market_transaction_direction,
    security_id INTEGER,
    price_per_asset MONEY NOT NULL GENERATED ALWAYS AS (amount / nb_of_units) STORED CONSTRAINT constraint_market_transaction_price_positive CHECK (price_per_asset > 0::MONEY),
    nb_of_units DECIMAL NOT NULL CONSTRAINT constraint_market_transaction_nb_of_units_positive CHECK (nb_of_units > 0),
    strategy_id INTEGER REFERENCES strategy(id)
) INHERITS (transaction_type);
DROP TABLE IF EXISTS market_transaction_history CASCADE;
CREATE TABLE market_transaction_history (LIKE market_transaction);
CREATE INDEX IF NOT EXISTS idx_market_transaction_direction ON market_transaction(direction);
CREATE INDEX IF NOT EXISTS idx_market_transaction_security_id ON market_transaction(security_id);
CREATE INDEX IF NOT EXISTS idx_market_transaction_price_per_asset ON market_transaction(price_per_asset);
CREATE INDEX IF NOT EXISTS idx_market_transaction_nb_of_units ON market_transaction(nb_of_units);
CREATE INDEX IF NOT EXISTS idx_market_transaction_strategy_id ON market_transaction(strategy_id);