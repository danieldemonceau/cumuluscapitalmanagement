INSERT INTO position_group(name, description)
SELECT tgg.name name, tgg.description description
FROM (
    VALUES ('AMP2203', 'Period March 2022', 'The Acquirer''s Multiple')
) tgg(name, description, strategy_name)
JOIN strategy s ON s.name = tgg.strategy_name 
WHERE NOT EXISTS (
    SELECT tg.id id
    FROM position_group tg
    WHERE tg.name = tgg.name
);
