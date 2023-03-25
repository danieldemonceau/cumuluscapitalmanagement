INSERT INTO source(name)
SELECT ss.name "name"
FROM (
    VALUES ('alphavantage'), ('twelveapi'), ('talib')
) ss(name)
WHERE NOT EXISTS (
    SELECT s.id
    FROM source s
    WHERE s.name = ss.name
);
