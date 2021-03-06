INSERT INTO symbol_type (name)
SELECT stt.name name
FROM (
    VALUES ('Stock'), ('ETF'), ('Crypto'), ('Commodity'), ('Indice'), ('Currency')
) stt(name)
WHERE NOT EXISTS (
    SELECT st.id id
    FROM symbol_type st
    WHERE st.name = stt.name
);
