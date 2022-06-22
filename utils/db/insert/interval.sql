INSERT INTO interval(name)
SELECT ii.name name
FROM (
    VALUES ('1min'), ('5min'), ('15min'), ('30min'), ('45min'), ('60min'), ('1h'), ('2h'), ('4h'), ('1day'), ('1month'), ('1week')
) ii(name)
WHERE NOT EXISTS (
    SELECT i.id id
    FROM interval i
    WHERE i.name = ii.name
);
