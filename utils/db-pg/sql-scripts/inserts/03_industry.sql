;

INSERT INTO industry(code, name, industry_group_id)
SELECT
    ii.code code,
    ii.name "name",
    ig.id industry_group_id
FROM (
    VALUES ('101010', 'Energy Equipment & Services', '1010'),
('101020', 'Oil Gas & Consumable Fuels', '1010'),
('151010', 'Chemicals', '1510'),
('151020', 'Construction Materials', '1510'),
('151030', 'Containers & Packaging', '1510'),
('151040', 'Metals & Mining', '1510'),
('151050', 'Paper & Forest Products', '1510'),
('201010', 'Aerospace & Defense', '2010'),
('201020', 'Building Products', '2010'),
('201030', 'Construction & Engineering', '2010'),
('201040', 'Electrical Equipment', '2010'),
('201050', 'Industrial Conglomerates', '2010'),
('201060', 'Machinery', '2010'),
('201070', 'Trading Companies & Distributors', '2010'),
('202010', 'Commercial Services & Supplies', '2020'),
('202020', 'Professional Services', '2020'),
('203010', 'Air Freight & Logistics', '2030'),
('203020', 'Airlines', '2030'),
('203030', 'Marine', '2030'),
('203040', 'Road & Rail', '2030'),
('203050', 'Transportation Infrastructure', '2030'),
('251010', 'Auto Components', '2510'),
('251020', 'Automobiles', '2510'),
('252010', 'Household Durables', '2520'),
('252020', 'Leisure Products', '2520'),
('252030', 'Textiles Apparel & Luxury Goods', '2520'),
('253010', 'Hotels Restaurants & Leisure', '2530'),
('253020', 'Diversified Consumer Services', '2530'),
('255010', 'Distributors', '2550'),
('255020', 'Internet & Direct Marketing Retail', '2550'),
('255030', 'Multiline Retail', '2550'),
('255040', 'Specialty Retail', '2550'),
('301010', 'Food & Staples Retailing', '3010'),
('302010', 'Beverages', '3020'),
('302020', 'Food Products', '3020'),
('302030', 'Tobacco', '3020'),
('303010', 'Household Products', '3030'),
('303020', 'Personal Products', '3030'),
('351010', 'Health Care Equipment & Supplies', '3510'),
('351020', 'Health Care Providers & Services', '3510'),
('351030', 'Health Care Technology', '3510'),
('352010', 'Biotechnology', '3520'),
('352020', 'Pharmaceuticals', '3520'),
('352030', 'Life Sciences Tools & Services', '3520'),
('401010', 'Banks', '4010'),
('401020', 'Thrifts & Mortgage Finance', '4010'),
('402010', 'Diversified Financial Services', '4020'),
('402020', 'Consumer Finance', '4020'),
('402030', 'Capital Markets', '4020'),
('402040', 'Mortgage Real Estate Investment Trusts (REITs)', '4020'),
('403010', 'Insurance', '4030'),
('451020', 'IT Services', '4510'),
('451030', 'Software', '4510'),
('452010', 'Communications Equipment', '4520'),
('452020', 'Technology Hardware Storage & Peripherals', '4520'),
('452030', 'Electronic Equipment Instruments & Components', '4520'),
('453010', 'Semiconductors & Semiconductor Equipment', '4530'),
('501010', 'Diversified Telecommunication Services', '5010'),
('501020', 'Wireless Telecommunication Services', '5010'),
('502010', 'Media', '5020'),
('502020', 'Entertainment', '5020'),
('502030', 'Interactive Media & Services', '5020'),
('551010', 'Electric Utilities', '5510'),
('551020', 'Gas Utilities', '5510'),
('551030', 'Multi-Utilities', '5510'),
('551040', 'Water Utilities', '5510'),
('551050', 'Independent Power and Renewable Electricity Producers', '5510'),
('601010', 'Equity Real Estate Investment Trusts (REITs)', '6010'),
('601020', 'Real Estate Management & Development', '6010')) ii(code, name, industry_group_code)
    JOIN industry_group ig ON ig.code = ii.industry_group_code
WHERE
    NOT EXISTS (
        SELECT
            i.id id
        FROM
            industry i
        WHERE
            1 = 1
            AND i.code = ii.code
            AND i.name = ii.name);
