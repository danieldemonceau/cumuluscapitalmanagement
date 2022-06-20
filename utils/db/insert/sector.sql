INSERT INTO sector (code, name)
SELECT ss.code code, ss.name name
FROM (
    VALUES  ('10', 'Energy'), 
            ('15', 'Materials'), 
            ('20', 'Industrials'), 
            ('25', 'Consumer Discretionary'), 
            ('30', 'Consumer Staples'), 
            ('35', 'Health Care'), 
            ('40', 'Financials'), 
            ('45', 'Information Technology'), 
            ('50', 'Communication Services'), 
            ('55', 'Utilities'), 
            ('60', 'Real Estate')
) ss(code, name)
WHERE NOT EXISTS (
    SELECT st.id id
    FROM sector st
    WHERE 1 = 1
    AND st.code = ss.code
    AND st.name = ss.name
);
