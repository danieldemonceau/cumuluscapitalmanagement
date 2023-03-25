INSERT INTO stock (name, full_name, description, security_type_id, subindustry_id, exchange_id)
SELECT
    ss.name "name",
    ss."full_name" full_name,
    ss.description description,
    st.id security_type_id,
    si.id subindustry_id,
    e.id exchange_id
FROM (
    VALUES ('AMX', 'América Móvil, S.A.B. De C.V.', '', 'Stock', 'Wireless Telecommunication Services', 'NYSE'),
        ('BBWI', 'Bath & Body Works Inc', '', 'Stock', 'Specialty Stores', 'NYSE'),
        ('BG', 'Bunge Ltd', '', 'Stock', 'Agricultural Products', 'NYSE'),
        ('BHP', 'Bhp Group Ltd', '', 'Stock', 'Diversified Metals & Mining', 'NYSE'),
        ('BK', 'Bank Of New York Mellon Corp', '', 'Stock', 'Investment Banking & Brokerage', 'NYSE'),
        ('BLDR', 'Builders Firstsource Inc', '', 'Stock', 'Building Products', 'NYSE'),
        ('DHI', 'D R Horton Inc', '', 'Stock', 'Homebuilding', 'NYSE'),
        ('FNF', 'Fidelity National Financial Inc', '', 'Stock', 'Insurance Brokers', 'NYSE'),
        ('LYB', 'Lyondellbasell Industries Nv', '', 'Stock', 'Diversified Chemicals', 'NYSE'),
        ('MRNA', 'Moderna Inc', '', 'Stock', 'Biotechnology', 'Nasdaq'),
        ('MT', 'Arcelormittal Sa', '', 'Stock', 'Steel', 'NYSE'),
        ('PHM', 'Pultegroup Inc', '', 'Stock', 'Homebuilding', 'NYSE'),
        ('REGN', 'Regeneron Pharmaceuticals Inc', '', 'Stock', 'Biotechnology', 'Nasdaq'),
        ('RIO', 'Rio Tinto Plc', '', 'Stock', 'Diversified Metals & Mining', 'NYSE'),
        ('STLA', 'Stellantis Nv', '', 'Stock', 'Automobile Manufacturers', 'NYSE'),
        ('STLD', 'Steel Dynamics Inc', '', 'Stock', 'Steel', 'Nasdaq'),
        ('SYF', 'Synchrony Financial', '', 'Stock', 'Consumer Finance', 'NYSE'),
        ('TSN', 'Tyson Foods Inc', '', 'Stock', 'Packaged Foods & Meats', 'NYSE'),
        ('VALE', 'Vale Sa', '', 'Stock', 'Diversified Metals & Mining', 'NYSE'),
        ('WLK', 'Westlake Corp', '', 'Stock', 'Commodity Chemicals', 'NYSE'),
        ('BAP', 'Credicorp Ltd', '', 'Stock', 'Diversified Banks', 'NYSE'),
        ('BBY', 'Best Buy Co Inc', '', 'Stock', 'Computer & Electronics Retail', 'NYSE'),
        ('COF', 'Capital One Financial Corp', '', 'Stock', 'Consumer Finance', 'NYSE'),
        ('ENIAY', 'Enel Americas SA', '', 'Stock', 'Electric Utilities', 'NYSE'),
        ('ERIC', 'Telefonaktiebolaget Lm Ericsson', '', 'Stock', 'Communications Equipment', 'Nasdaq'),
        ('MOS', 'Mosaic Co', '', 'Stock', 'Fertilizers & Agricultural Chemicals', 'NYSE'),
        ('MU', 'Micron Technology Inc', '', 'Stock', 'Semiconductor Equipment', 'Nasdaq'),
        ('OLN', 'Olin Corp', '', 'Stock', 'Commodity Chemicals', 'NYSE'),
        ('SCHW', 'Charles Schwab Corp', '', 'Stock', 'Investment Banking & Brokerage', 'NYSE'),
        ('SSL', 'Sasol Ltd', '', 'Stock', 'Diversified Chemicals', 'NYSE'),
        ('TEF', 'Telefonica Sa', '', 'Stock', 'Integrated Telecommunication Services', 'NYSE'),
        ('WHR', 'Whirlpool Corp', '', 'Stock', 'Household Appliances', 'NYSE'),
        ('WY', 'Weyerhaeuser Co', '', 'Stock', 'Diversified REITs', 'NYSE'),
        ('ASRT', 'Assertio Holdings Inc', '', 'Stock', 'Pharmaceuticals', 'Nasdaq'),
        ('BCC', 'Boise Cascade Co', '', 'Stock', 'Trading Companies & Distributors', 'NYSE'),
        ('HPQ', 'Hp Inc', '', 'Stock', 'Technology Hardware Storage & Peripherals', 'NYSE'),
        ('LEU', 'Centrus Energy Corp', '', 'Stock', 'Coal & Consumable Fuels', 'NYSE'),
        ('WFG', 'West Fraser Timber Co Ltd', '', 'Stock', 'Forest Products', 'NYSE'),
        ('WIRE', 'Encore Wire Corp', '', 'Stock', 'Electrical Components & Equipment', 'Nasdaq'),
        ('DDS', 'Dillards Inc', '', 'Stock', 'Department Stores', 'NYSE'),
        ('MSB', 'Mesabi Trust', '', 'Stock', 'Diversified Metals & Mining', 'NYSE'),
        ('SIGA', 'Siga Technologies Inc', '', 'Stock', 'Pharmaceuticals', 'Nasdaq'),
        ('ASTL', 'Assertio Holdings, Inc.', '', 'Stock', 'Pharmaceuticals', 'Nasdaq'),
        ('IRWD', 'Ironwood Pharmaceuticals, Inc.', '', 'Stock', 'Pharmaceuticals', 'Nasdaq'),
        ('MLI', 'Mueller Industries Inc', '', 'Stock', 'Aluminum', 'Nasdaq'),
        ('NUE', 'Nucor Corporation', '', 'Stock', 'Steel', 'Nasdaq'),
        ('RS', 'Reliance Steel & Aluminum Co.', '', 'Stock', 'Diversified Metals & Mining', 'Nasdaq'),
        ('X', 'United States Steel Corp.', '', 'Stock', 'Steel', 'Nasdaq'),
        ('EQH', 'Equitable Holdings Inc.', '', 'Stock', 'Other Diversified Financial Services', 'Nasdaq'),
        ('TECK', 'Teck Resources Ltd', '', 'Stock', 'Diversified Metals & Mining', 'Nasdaq'),
        ('UMC', 'United Microelectronics Corp.', '', 'Stock', 'Semiconductor Equipment', 'Nasdaq'),
        ('LEN', 'Lennar Corp', '', 'Stock', 'Homebuilding', 'NYSE'),
        ('PFG', 'Principal Financial Group Inc', '', 'Stock', 'Life & Health Insurance', 'Nasdaq'),
        ('RF', 'Regions Financial Corp', '', 'Stock', 'Regional Banks', 'NYSE'),
        ('SQM', 'Sociedad Quimica Y Minera De Chile SA ADR', '', 'Stock', 'Fertilizers & Agricultural Chemicals', 'NYSE'),
        ('CF', 'CF Industries Holdings Inc', '', 'Stock', 'Fertilizers & Agricultural Chemicals', 'NYSE'),
        ('ICL', 'ICL Group Ltd', '', 'Stock', 'Fertilizers & Agricultural Chemicals', 'NYSE'),
        ('BKE', 'Buckle Inc', '', 'Stock', 'Apparel Retail', 'Nasdaq'),
        ('LLY', 'Eli Lilly and Co', '', 'Stock', 'Pharmaceuticals', 'Nasdaq'),
        ('DKS', 'Dick''s Sporting Goods Inc', '', 'Stock', 'Specialty Stores', 'Nasdaq'),
        ('VIR', 'Vir Biotechnology Inc', '', 'Stock', 'Biotechnology', 'Nasdaq'),
        ('UBS', 'UBS Group AG', '', 'Stock', 'Asset Management & Custody Banks', 'NYSE')) ss (name, full_name, description, security_type_name, subindustry_name, exchange_name)
    JOIN security_type st ON st.name = ss.security_type_name
    JOIN subindustry si ON si.name = ss.subindustry_name
    JOIN exchange e ON e.name = ss.exchange_name
WHERE
    NOT EXISTS (
        SELECT
            st.id id
        FROM
            stock st
        WHERE
            st.name = ss.name);

