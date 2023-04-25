;

INSERT INTO strategy(name)
SELECT
    ss.name "name"
FROM (
    VALUES ('Market Dollar-Cost Averaging'),
('Magic Formula'),
('The Acquirer''s Multiple')) ss(name)
WHERE
    NOT EXISTS (
        SELECT
            s.id
        FROM
            strategy s
        WHERE
            s.name = ss.name);

