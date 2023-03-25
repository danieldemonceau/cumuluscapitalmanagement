INSERT INTO exchange (name, city)
SELECT ee.name "name", ee.city city
FROM (
    VALUES ('NYSE', 'NYSE'), ('Nasdaq', 'NASDAQ'), ('LSE', 'London'), ('Hong Kong Exchanges', 'Hong Kong'), ('FRA', 'Frankfurt'), ('Euronext Paris', 'Paris'), ('SIX', 'Zurich'), ('Bolsa De Madrid', 'Madrid'), ('Borsa Italiana', 'Milan'), ('Stockholm Stock Exchange', 'Stockholm'), ('Euronext Amsterdam', 'Amsterdam'), ('Oslo Stock Exchange', 'Oslo'), ('Copenhagen Stock Exchange', 'Copenhagen'), ('Helsinki Stock Exchange', 'Helsinki'), ('Euronext Brussels', 'Brussels'), ('Euronext Lisbon', 'Lisbon'), ('OTC Markets Stock Exchange', 'OTC Markets'), ('Tadawul', 'Saudi Arabia'), ('Chicago Board Options Exchange', 'Chicago')
) ee(name, city)
WHERE NOT EXISTS (
    SELECT m.id id
    FROM exchange m
    WHERE m.name = ee.name
);
