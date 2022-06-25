INSERT INTO broker(name)
SELECT bb.name name
FROM (
    VALUES ('etoro', 'Stake', 'Superhero')
) bb(name)
WHERE NOT EXISTS (
    SELECT b.id id
    FROM broker b
    WHERE b.name = bb.name
);
