INSERT INTO etf (name, full_name, description, security_type_id, exchange_id)
SELECT ss.name name, ss.full_name full_name, ss.description description, st.id security_type_id, e.id exchange_id
FROM (
    VALUES (
            'VEA'
            , 'Vanguard FTSE Developed Market ETF'
            , ''
            , 'ETF'
            , 'NYSE'
        ), (
            'VONG'
            , 'Vanguard Russell 1000 Growth ETF'
            , ''
            , 'ETF'
            , 'NYSE'
        ), (
            'VOO'
            , 'Vanguard S&P 500 ETF'
            , ''
            , 'ETF'
            , 'NYSE'
        ), (
            'QQQ'
            , 'Invesco QQQ'
            , ''
            , 'ETF'
            , 'NYSE'
        ), (
            'ARKF'
            , 'ARK Fintech Innovation ETF'
            , ''
            , 'ETF'
            , 'NYSE'
        ), (
            'ARKK'
            , 'ARK Innovation ETF'
            , ''
            , 'ETF'
            , 'NYSE'
        ), (
            'ARKQ'
            , 'ARK Autonomous Technology & Robotics ETF'
            , ''
            , 'ETF'
            , 'NYSE'
        ), (
            'VGK'
            , 'Vanguard FTSE Europe ETF'
            , ''
            , 'ETF'
            , 'NYSE'
        ), (
            'ICLN'
            , 'iShares Global clean energy ETF'
            , ''
            , 'ETF'
            , 'NYSE'
        ), (
            'URA'
            , 'Global X Uranium ETF'
            , ''
            , 'ETF'
            , 'NYSE'
        ), (
            'LIT'
            , 'Global X Lithium & Battery Tech ETF'
            , ''
            , 'ETF'
            , 'NYSE'
        ), (
            'TAN'
            , 'Invesco Solar ETF'
            , ''
            , 'ETF'
            , 'NYSE'
        )
) ss(name, full_name, description, security_type_name, exchange_name)
JOIN security_type st ON st.name = ss.security_type_name
JOIN exchange e ON e.name = ss.exchange_name
WHERE NOT EXISTS (
    SELECT st.id id
    FROM etf st
    WHERE st.name = ss.name
);
