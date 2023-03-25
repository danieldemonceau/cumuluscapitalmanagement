INSERT INTO stock (name, full_name, description, stock_type_id, subindustry_id, exchange_id)
SELECT ss.name name, ss.full_name full_name, ss.description description, st.id stock_type_id, s.id sector_id, e.id exchange_id
FROM (
    VALUES (
            'SYF'
            , 'Synchrony Financial'
            , 'Synchrony Financial is a consumer financial services company. Operating with the United States and Canada, the company offers consumer financing, promotional financial, loyalty programs, and private label credit cards through businesses that it has partnered with. Incorporated in 2003, Synchrony Financial has its headquarters in Stamford, Connecticut.

    Synchrony manages its revenue activities through three segments, including Retail Card, Payment Solutions, and CareCredit. The company''s credit products are offered through its subsidiary Synchrony Bank. The company offers a range of deposit products insured by the Federal Deposit Insurance Corporation (FDIC) through Synchrony Bank, including money market accounts, savings accounts, certificates of deposit, and individual retirement accounts (IRAs). The company provides three types of credit products: consumer instalment loans, commercial credit products, and credit cards. Synchrony offers both private label credit cards and dual cards.

    Listed on the NYSE, Synchrony Financial is traded under the ticker SYF. The company''s promotional financing is available for health, veterinary, and personal care procedures, as well as other services and products, such as cosmetic, audiology, vision, and dental. Some of the company''s partners include Amazon, Gap, Lowe''s, PayPal, Verizon, Sam''s Club, and Walgreen''s.'
            , 'Stock'
            , 'Financials'
            , 'NYSE'
        )
        , (
            'STLD'
            , 'Steel Dynamics Inc'
            , 'Steel Dynamics, Inc. is a steel producer and metal recycler operating within the US. It serves non-residential steel fabricators, metal building companies, and general construction contractors. Founded in 1993, the company is headquartered in Fort Wayne, Indiana.'
            , 'Stock'
            , 'Materials'
            , 'Nasdaq'
        )
        , (
            'AMX'
            , 'America Movil, S.A.B. de C.V.'
            , 'America Movil, S.A.B. de C.V. is a telecom services company that offers fixed and wireless voice services, long distance services, internet access, data services, and more. Based in Mexico City, Mexico, the company operates internationally and was founded in 2000. America Movil is listed using the AMX ticker on the NYSE'
            , 'Stock'
            , 'Technology'
            , 'NYSE'
        )
        , (
            'LYB'
            , 'LyondellBasell Industries NV'
            , 'LyondellBasell Industries N.V. operates as a chemical company around the world. The company produces plastics and chemicals for a wide range of applications. Founded in 1955, LyondellBasell has its headquarters in Houston, Texas. 

LyondellBasell operates its business through multiple segments, including Olefins and Polyolefins-Americas (O&P-Americas), Olefins and Polyolefins-Europe, Asia, International (O&P-EAI), Intermediates and Derivatives (I&D), Advanced Polymer Solutions (APS), Refining and Technology. The company''s plastics and chemicals are used to manufacture a wide range of products, including home furnishings, food packaging, paints, automotive components, and coatings. LyondellBasell produces olefins, polyethylene (PE), polypropylene (PP), propylene oxide, and other derivatives of these products. The company also operates processing plants to convert liquid and gaseous hydrocarbon feedstocks into plastic resins and other chemicals. 

Available on the NYSE, LyondellBasell is listed under the ticker LYB. In addition to its other activities, the company also develops and licenses technologies for chemical and polyolefin processes and manufactures and sells polyolefin catalysts. LyondellBasell also refines crude oil into gasoline, diesel, and jet fuel. In addition to being one of the largest plastics, chemicals, and refining companies in the world, LyondellBasell is a leading producer of oxyfuels and the largest global licensor of polyolefin technologies as of December 2021.'
            , 'Stock'
            , 'Materials'
            , 'NYSE'
        )
        , (
            'WLK'
            , 'Wetlaske Chemical Corp'
            , 'Based in Houston Texas, Westlake Chemical Corp is a global company, engaged in the manufacture and supply of petrochemicals, polymers and building products to a worldwide customer base. Founded in 1986 the firm trades on the NYSE under the ticker WLK.'
            , 'Stock'
            , 'Materials'
            , 'NYSE'
        )
        , (
            'MT.US'
            , 'ArcelorMittal ADR'
            , 'ArcelorMittal is a steel manufacturing corporation with headquarters in Luxembourg City. Established in 1976, the company operates across the globe, with steel manufacturing facilities in 18 countries and customers spread across 160 countries. The firm trades on the NYSE with the stock MT.'
            , 'Stock'
            , 'Materials'
            , 'NYSE'
        )
) ss(name, full_name, description, stock_type_name, sector_name, exchange_name)
JOIN stock_type st ON st.name = ss.stock_type_name
JOIN sector s ON s.name = ss.sector_name
JOIN exchange e ON e.name = ss.exchange_name
WHERE NOT EXISTS (
    SELECT st.id id
    FROM stock st
    WHERE st.name = ss.name
);
