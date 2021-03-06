INSERT INTO subindustry (code, name, industry_id)
SELECT sii.code code, sii.name name, i.id industry_id
FROM (
    VALUES

        ('10101010', 'Oil & Gas Drilling', '101010'), 
        ('10101020', 'Oil & Gas Equipment & Services', '101010'), 
        ('10102010', 'Integrated Oil & Gas', '101020'), 
        ('10102020', 'Oil & Gas Exploration & Production', '101020'), 
        ('10102030', 'Oil & Gas Refining & Marketing', '101020'), 
        ('10102040', 'Oil & Gas Storage & Transportation', '101020'), 
        ('10102050', 'Coal & Consumable Fuels', '101020'), 
        ('15101010', 'Commodity Chemicals', '151010'), 
        ('15101020', 'Diversified Chemicals', '151010'), 
        ('15101030', 'Fertilizers & Agricultural Chemicals', '151010'), 
        ('15101040', 'Industrial Gases', '151010'), 
        ('15101050', 'Specialty Chemicals', '151010'), 
        ('15102010', 'Construction Materials', '151020'), 
        ('15103010', 'Metal & Glass Containers', '151030'), 
        ('15103020', 'Paper Packaging', '151030'), 
        ('15104010', 'Aluminum', '151040'), 
        ('15104020', 'Diversified Metals & Mining', '151040'), 
        ('15104025', 'Copper', '151040'), 
        ('15104030', 'Gold', '151040'), 
        ('15104040', 'Precious Metals & Minerals', '151040'), 
        ('15104045', 'Silver', '151040'), 
        ('15104050', 'Steel', '151040'), 
        ('15105010', 'Forest Products', '151050'), 
        ('15105020', 'Paper Products', '151050'), 
        ('20101010', 'Aerospace & Defense', '201010'), 
        ('20102010', 'Building Products', '201020'), 
        ('20103010', 'Construction & Engineering', '201030'), 
        ('20104010', 'Electrical Components & Equipment', '201040'), 
        ('20104020', 'Heavy Electrical Equipment', '201040'), 
        ('20105010', 'Industrial Conglomerates', '201050'), 
        ('20106010', 'Construction Machinery & Heavy Trucks', '201060'), 
        ('20106015', 'Agricultural & Farm Machinery', '201060'), 
        ('20106020', 'Industrial Machinery', '201060'), 
        ('20107010', 'Trading Companies & Distributors', '201070'), 
        ('20201010', 'Commercial Printing', '202010'), 
        ('20201050', 'Environmental & Facilities Services', '202010'), 
        ('20201060', 'Office Services & Supplies', '202010'), 
        ('20201070', 'Diversified Support Services', '202010'), 
        ('20201080', 'Security & Alarm Services', '202010'), 
        ('20202010', 'Human Resource & Employment Services', '202020'), 
        ('20202020', 'Research & Consulting Services', '202020'), 
        ('20301010', 'Air Freight & Logistics', '203010'), 
        ('20302010', 'Airlines', '203020'), 
        ('20303010', 'Marine', '203030'), 
        ('20304010', 'Railroads', '203040'), 
        ('20304020', 'Trucking', '203040'), 
        ('20305010', 'Airport Services', '203050'), 
        ('20305020', 'Highways & Railtracks', '203050'), 
        ('20305030', 'Marine Ports & Services', '203050'), 
        ('25101010', 'Auto Parts & Equipment', '251010'), 
        ('25101020', 'Tires & Rubber', '251010'), 
        ('25102010', 'Automobile Manufacturers', '251020'), 
        ('25102020', 'Motorcycle Manufacturers', '251020'), 
        ('25201010', 'Consumer Electronics', '252010'), 
        ('25201020', 'Home Furnishings', '252010'), 
        ('25201030', 'Homebuilding', '252010'), 
        ('25201040', 'Household Appliances', '252010'), 
        ('25201050', 'Housewares & Specialties', '252010'), 
        ('25202010', 'Leisure Products', '252020'), 
        ('25203010', 'Apparel Accessories & Luxury Goods', '252030'), 
        ('25203020', 'Footwear', '252030'), 
        ('25203030', 'Textiles', '252030'), 
        ('25301010', 'Casinos & Gaming', '253010'), 
        ('25301020', 'Hotels Resorts & Cruise Lines', '253010'), 
        ('25301030', 'Leisure Facilities', '253010'), 
        ('25301040', 'Restaurants', '253010'), 
        ('25302010', 'Education Services', '253020'), 
        ('25302020', 'Specialized Consumer Services', '253020'), 
        ('25501010', 'Distributors', '255010'), 
        ('25502020', 'Internet & Direct Marketing Retail', '255020'), 
        ('25503010', 'Department Stores', '255030'), 
        ('25503020', 'General Merchandise Stores', '255030'), 
        ('25504010', 'Apparel Retail', '255040'), 
        ('25504020', 'Computer & Electronics Retail', '255040'), 
        ('25504030', 'Home Improvement Retail', '255040'), 
        ('25504040', 'Specialty Stores', '255040'), 
        ('25504050', 'Automotive Retail', '255040'), 
        ('25504060', 'Homefurnishing Retail', '255040'), 
        ('30101010', 'Drug Retail', '301010'), 
        ('30101020', 'Food Distributors', '301010'), 
        ('30101030', 'Food Retail', '301010'), 
        ('30101040', 'Hypermarkets & Super Centers', '301010'), 
        ('30201010', 'Brewers', '302010'), 
        ('30201020', 'Distillers & Vintners', '302010'), 
        ('30201030', 'Soft Drinks', '302010'), 
        ('30202010', 'Agricultural Products', '302020'), 
        ('30202030', 'Packaged Foods & Meats', '302020'), 
        ('30203010', 'Tobacco', '302030'), 
        ('30301010', 'Household Products', '303010'), 
        ('30302010', 'Personal Products', '303020'), 
        ('35101010', 'Health Care Equipment', '351010'), 
        ('35101020', 'Health Care Supplies', '351010'), 
        ('35102010', 'Health Care Distributors', '351020'), 
        ('35102015', 'Health Care Services', '351020'), 
        ('35102020', 'Health Care Facilities', '351020'), 
        ('35102030', 'Managed Health Care', '351020'), 
        ('35103010', 'Health Care Technology', '351030'), 
        ('35201010', 'Biotechnology', '352010'), 
        ('35202010', 'Pharmaceuticals', '352020'), 
        ('35203010', 'Life Sciences Tools & Services', '352030'), 
        ('40101010', 'Diversified Banks', '401010'), 
        ('40101015', 'Regional Banks', '401010'), 
        ('40102010', 'Thrifts & Mortgage Finance', '401020'), 
        ('40201020', 'Other Diversified Financial Services', '402010'), 
        ('40201030', 'Multi-Sector Holdings', '402010'), 
        ('40201040', 'Specialized Finance', '402010'), 
        ('40202010', 'Consumer Finance', '402020'), 
        ('40203010', 'Asset Management & Custody Banks', '402030'), 
        ('40203020', 'Investment Banking & Brokerage', '402030'), 
        ('40203030', 'Diversified Capital Markets', '402030'), 
        ('40203040', 'Financial Exchanges & Data', '402030'), 
        ('40204010', 'Mortgage REITs', '402040'), 
        ('40301010', 'Insurance Brokers', '403010'), 
        ('40301020', 'Life & Health Insurance', '403010'), 
        ('40301030', 'Multi-line Insurance', '403010'), 
        ('40301040', 'Property & Casualty Insurance', '403010'), 
        ('40301050', 'Reinsurance', '403010'), 
        ('45102010', 'IT Consulting & Other Services', '451020'), 
        ('45102020', 'Data Processing & Outsourced Services', '451020'), 
        ('45102030', 'Internet Services & Infrastructure', '451020'), 
        ('45103010', 'Application Software', '451030'), 
        ('45103020', 'Systems Software', '451030'), 
        ('45201020', 'Communications Equipment', '452010'), 
        ('45202030', 'Technology Hardware Storage & Peripherals', '452020'), 
        ('45203010', 'Electronic Equipment & Instruments', '452030'), 
        ('45203015', 'Electronic Components', '452030'), 
        ('45203020', 'Electronic Manufacturing Services', '452030'), 
        ('45203030', 'Technology Distributors', '452030'), 
        ('45301010', 'Semiconductor Equipment', '453010'), 
        ('45301020', 'Semiconductors', '453010'), 
        ('50101010', 'Alternative Carriers', '501010'), 
        ('50101020', 'Integrated Telecommunication Services', '501010'), 
        ('50102010', 'Wireless Telecommunication Services', '501020'), 
        ('50201010', 'Advertising', '502010'), 
        ('50201020', 'Broadcasting', '502010'), 
        ('50201030', 'Cable & Satellite', '502010'), 
        ('50201040', 'Publishing', '502010'), 
        ('50202010', 'Movies & Entertainment', '502020'), 
        ('50202020', 'Interactive Home Entertainment', '502020'), 
        ('50203010', 'Interactive Media & Services', '502030'), 
        ('55101010', 'Electric Utilities', '551010'), 
        ('55102010', 'Gas Utilities', '551020'), 
        ('55103010', 'Multi-Utilities', '551030'), 
        ('55104010', 'Water Utilities', '551040'), 
        ('55105010', 'Independent Power Producers & Energy Traders', '551050'), 
        ('55105020', 'Renewable Electricity', '551050'), 
        ('60101010', 'Diversified REITs', '601010'), 
        ('60101020', 'Industrial REITs', '601010'), 
        ('60101030', 'Hotel & Resort REITs', '601010'), 
        ('60101040', 'Office REITs', '601010'), 
        ('60101050', 'Health Care REITs', '601010'), 
        ('60101060', 'Residential REITs', '601010'), 
        ('60101070', 'Retail REITs', '601010'), 
        ('60101080', 'Specialized REITs', '601010'), 
        ('60102010', 'Diversified Real Estate Activities', '601020'), 
        ('60102020', 'Real Estate Operating Companies', '601020'), 
        ('60102030', 'Real Estate Development', '601020'), 
        ('60102040', 'Real Estate Services', '601020')

) sii(code, name, industry_code)
JOIN industry i ON i.code = sii.industry_code
WHERE NOT EXISTS (
    SELECT si.id id
    FROM subindustry si
    WHERE 1 = 1
    AND si.code = sii.code
    AND si.name = sii.name
);
