INSERT INTO industry_group (code, name, sector_id)
SELECT igg.code code, igg.name name, s.id sector_id
FROM (
    VALUES  
        ('1010', 'Energy', '10'), 
        ('1510', 'Materials', '15'), 
        ('2010', 'Capital Goods', '20'), 
        ('2020', 'Commercial & Professional Services', '20'), 
        ('2030', 'Transportation', '20'), 
        ('2510', 'Automobiles & Components', '25'), 
        ('2520', 'Consumer Durables & Apparel', '25'), 
        ('2530', 'Consumer Services', '25'), 
        ('2550', 'Retailing', '25'), 
        ('3010', 'Food & Staples Retailing', '30'), 
        ('3020', 'Food Beverage & Tobacco', '30'), 
        ('3030', 'Household & Personal Products', '30'), 
        ('3510', 'Health Care Equipment & Services', '35'), 
        ('3520', 'Pharmaceuticals Biotechnology & Life Sciences', '35'), 
        ('4010', 'Banks', '40'), 
        ('4020', 'Diversified Financials', '40'), 
        ('4030', 'Insurance', '40'), 
        ('4510', 'Software & Services', '45'), 
        ('4520', 'Technology Hardware & Equipment', '45'), 
        ('4530', 'Semiconductors & Semiconductor Equipment', '45'), 
        ('5010', 'Telecommunication Services', '50'), 
        ('5020', 'Media & Entertainment', '50'), 
        ('5510', 'Utilities', '55'), 
        ('6010', 'Real Estate', '60')
) igg(code, name, sector_code)
JOIN sector s ON s.code = igg.sector_code
WHERE NOT EXISTS (
    SELECT ig.id id
    FROM industry_group ig
    WHERE 1 = 1
    AND ig.code = igg.code
    AND ig.name = igg.name
);
