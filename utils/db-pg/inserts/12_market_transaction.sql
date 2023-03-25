-- '2022-3-14'
-- MAGIC FORMULA
-- BUYs
INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    500.94 "amount",
    s.id "security_id",
    205.30327868 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'ASRT'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    538.72 "amount",
    s.id "security_id",
    6.89694021 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'BCC'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    511.00 "amount",
    s.id "security_id",
    14 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'HPQ'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    516.49 "amount",
    s.id "security_id",
    13.29446589 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'LEU'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    468.70 "amount",
    s.id "security_id",
    4.96820012 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'WFG'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    502.48 "amount",
    s.id "security_id",
    3.9996816 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'WIRE'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

-- The Acquirer''s Multiple
-- BUYs
INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    247.65 "amount",
    s.id "security_id",
    13 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'AMX'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    238.15 "amount",
    s.id "security_id",
    5 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'BBWI'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    222.10 "amount",
    s.id "security_id",
    2 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'BG'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    274.24 "amount",
    s.id "security_id",
    4.08278 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'BHP'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    250 "amount",
    s.id "security_id",
    5 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'BK'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    224.73 "amount",
    s.id "security_id",
    3 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'BLDR'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    243.66 "amount",
    s.id "security_id",
    3 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'DHI'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    240.60 "amount",
    s.id "security_id",
    5 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'FNF'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    210 "amount",
    s.id "security_id",
    2 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'LYB'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    280.92 "amount",
    s.id "security_id",
    2 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'MRNA'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    272.79 "amount",
    s.id "security_id",
    9 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'MT'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    232.35 "amount",
    s.id "security_id",
    5 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'PHM'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    259.55 "amount",
    s.id "security_id",
    0.4 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'REGN'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    213.81 "amount",
    s.id "security_id",
    3 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'RIO'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    258.57 "amount",
    s.id "security_id",
    17 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'STLA'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    216.36 "amount",
    s.id "security_id",
    3 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'STLD'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    250.39 "amount",
    s.id "security_id",
    7 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'SYF'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    261.27 "amount",
    s.id "security_id",
    3 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'TSN'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    248.04 "amount",
    s.id "security_id",
    13.27127 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VALE'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-14' "execution_timestamp",
    b.id "broker_id",
    241 "amount",
    s.id "security_id",
    2 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'WLK'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

-- '2022-06-14
-- MAGIC FORMULA
-- BUYs
INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    750.00 "amount",
    s.id "security_id",
    2.54963285 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'DDS'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    750.00 "amount",
    s.id "security_id",
    28.58242 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Superhero'
    AND s.name = 'MSB'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    750.00 "amount",
    s.id "security_id",
    78.45188284 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'SIGA'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-29' "execution_timestamp",
    b.id "broker_id",
    749.61 "amount",
    s.id "security_id",
    80.9514 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'ASTL'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-29'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-29' "execution_timestamp",
    b.id "broker_id",
    750.01 "amount",
    s.id "security_id",
    61.3254 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'IRWD'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-29'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-29' "execution_timestamp",
    b.id "broker_id",
    750.00 "amount",
    s.id "security_id",
    11.2057 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'MLI'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-29'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-29' "execution_timestamp",
    b.id "broker_id",
    750.01 "amount",
    s.id "security_id",
    5.681 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'NUE'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-29'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-29' "execution_timestamp",
    b.id "broker_id",
    750.01 "amount",
    s.id "security_id",
    3.9894 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'RS'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-29'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-29' "execution_timestamp",
    b.id "broker_id",
    750.00 "amount",
    s.id "security_id",
    33.6625 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'Stake'
    AND s.name = 'X'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-29'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

-- The Acquirer''s Multiple
-- BUYs
INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    354.1638 "amount",
    s.id "security_id",
    2.82 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'BAP'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    350 "amount",
    s.id "security_id",
    4.97089 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'BBY'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    350 "amount",
    s.id "security_id",
    3.23894 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'COF'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    350 "amount",
    s.id "security_id",
    68.49315 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ENIAY'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    350 "amount",
    s.id "security_id",
    47.23347 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ERIC'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    350 "amount",
    s.id "security_id",
    6.67429 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'MOS'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    350 "amount",
    s.id "security_id",
    5.86461 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'MU'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    350 "amount",
    s.id "security_id",
    6.19688 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'OLN'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    350.002796 "amount",
    s.id "security_id",
    5.7434 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'SCHW'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    350 "amount",
    s.id "security_id",
    13.98322 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'SSL'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    350 "amount",
    s.id "security_id",
    75.43103 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'TEF'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    350 "amount",
    s.id "security_id",
    2.20653 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'WHR'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    350 "amount",
    s.id "security_id",
    10.15081 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'WY'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

-- SELLs
INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Sell' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    164.85 "amount",
    s.id "security_id",
    5 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'BBWI'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Sell'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Sell' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    207.9 "amount",
    s.id "security_id",
    5 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'BK'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Sell'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Sell' "type",
    '' "description",
    '2022-06-14' "execution_timestamp",
    b.id "broker_id",
    210.9 "amount",
    s.id "security_id",
    3 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'STLD'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Sell'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-14' "execution_timestamp",
    b.id "broker_id",
    600.0001224 "amount",
    s.id "security_id",
    8.57388 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'STLD'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-14' "execution_timestamp",
    b.id "broker_id",
    600 "amount",
    s.id "security_id",
    15 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'BK'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-14' "execution_timestamp",
    b.id "broker_id",
    600.0000823 "amount",
    s.id "security_id",
    19.91371 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'EQH'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-14' "execution_timestamp",
    b.id "broker_id",
    599.999967 "amount",
    s.id "security_id",
    17.8731 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'TECK'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-14' "execution_timestamp",
    b.id "broker_id",
    599.9999748 "amount",
    s.id "security_id",
    93.45794 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'UMC'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

-- Market Dollar-Cost Averaging
-- BUYs
INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-02' "execution_timestamp",
    b.id "broker_id",
    75 "amount",
    s.id "security_id",
    1.283587 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-02'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-02' "execution_timestamp",
    b.id "broker_id",
    50 "amount",
    s.id "security_id",
    1.118819 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-02'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-02' "execution_timestamp",
    b.id "broker_id",
    225 "amount",
    s.id "security_id",
    0.593073 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-02'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-02' "execution_timestamp",
    b.id "broker_id",
    50 "amount",
    s.id "security_id",
    1.071811 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-02'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-02' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    0.319152 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-02'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-04-04' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    0.275490 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-04-04'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-04-04' "execution_timestamp",
    b.id "broker_id",
    50 "amount",
    s.id "security_id",
    1.032631 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-04-04'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-04-04' "execution_timestamp",
    b.id "broker_id",
    50 "amount",
    s.id "security_id",
    0.727590 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-04-04'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-04-04' "execution_timestamp",
    b.id "broker_id",
    75 "amount",
    s.id "security_id",
    1.194268 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-04-04'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-04-04' "execution_timestamp",
    b.id "broker_id",
    225 "amount",
    s.id "security_id",
    0.540229 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-04-04'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-06' "execution_timestamp",
    b.id "broker_id",
    70 "amount",
    s.id "security_id",
    0.193670 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-06'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-06' "execution_timestamp",
    b.id "broker_id",
    400 "amount",
    s.id "security_id",
    18.501388 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ICLN'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-06'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-06' "execution_timestamp",
    b.id "broker_id",
    30 "amount",
    s.id "security_id",
    0.753012 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-06'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-06' "execution_timestamp",
    b.id "broker_id",
    30 "amount",
    s.id "security_id",
    0.101345 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-06'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-06' "execution_timestamp",
    b.id "broker_id",
    20 "amount",
    s.id "security_id",
    0.491280 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-06'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-06' "execution_timestamp",
    b.id "broker_id",
    150 "amount",
    s.id "security_id",
    1.834862 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'TAN'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-06'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-06' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    1.968892 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-06'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-06' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    4.302926 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'URA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-06'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-06' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    1.370990 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'LIT'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-06'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-07' "execution_timestamp",
    b.id "broker_id",
    40 "amount",
    s.id "security_id",
    0.656814 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-07'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-07' "execution_timestamp",
    b.id "broker_id",
    180 "amount",
    s.id "security_id",
    0.453732 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-07'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-07' "execution_timestamp",
    b.id "broker_id",
    40 "amount",
    s.id "security_id",
    0.885740 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-07'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-07' "execution_timestamp",
    b.id "broker_id",
    60 "amount",
    s.id "security_id",
    1.048401 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-07'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-07' "execution_timestamp",
    b.id "broker_id",
    80 "amount",
    s.id "security_id",
    0.236876 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-07'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-08-08' "execution_timestamp",
    b.id "broker_id",
    80 "amount",
    s.id "security_id",
    1.867414 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-08-08'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-08-08' "execution_timestamp",
    b.id "broker_id",
    360 "amount",
    s.id "security_id",
    0.942951 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-08-08'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-08-08' "execution_timestamp",
    b.id "broker_id",
    80 "amount",
    s.id "security_id",
    1.586672 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-08-08'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-08-08' "execution_timestamp",
    b.id "broker_id",
    120 "amount",
    s.id "security_id",
    2.166456 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-08-08'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-08-08' "execution_timestamp",
    b.id "broker_id",
    160 "amount",
    s.id "security_id",
    0.495939 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-08-08'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-11' "execution_timestamp",
    b.id "broker_id",
    80 "amount",
    s.id "security_id",
    1.987578 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-11'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-11' "execution_timestamp",
    b.id "broker_id",
    120 "amount",
    s.id "security_id",
    2.323330 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-11'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-11' "execution_timestamp",
    b.id "broker_id",
    80 "amount",
    s.id "security_id",
    1.727862 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-11'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-11' "execution_timestamp",
    b.id "broker_id",
    360 "amount",
    s.id "security_id",
    1.014085 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-11'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-11' "execution_timestamp",
    b.id "broker_id",
    160 "amount",
    s.id "security_id",
    0.546280 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-11'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-13' "execution_timestamp",
    b.id "broker_id",
    150 "amount",
    s.id "security_id",
    2.758874 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-13'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-13' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    2.646903 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-13'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-13' "execution_timestamp",
    b.id "broker_id",
    200 "amount",
    s.id "security_id",
    0.715026 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-13'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-13' "execution_timestamp",
    b.id "broker_id",
    450 "amount",
    s.id "security_id",
    1.286817 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-13'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-13' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    2.376426 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-13'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-16' "execution_timestamp",
    b.id "broker_id",
    75 "amount",
    s.id "security_id",
    1.326964 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-16'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-16' "execution_timestamp",
    b.id "broker_id",
    50 "amount",
    s.id "security_id",
    1.165501 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-16'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-16' "execution_timestamp",
    b.id "broker_id",
    50 "amount",
    s.id "security_id",
    1.153137 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-16'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-16' "execution_timestamp",
    b.id "broker_id",
    225 "amount",
    s.id "security_id",
    0.611862 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-16'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-16' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    0.334001 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-16'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-01-18' "execution_timestamp",
    b.id "broker_id",
    203.55 "amount",
    s.id "security_id",
    3.000000 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'TAN'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-01-18'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-04-18' "execution_timestamp",
    b.id "broker_id",
    75 "amount",
    s.id "security_id",
    1.220504 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-04-18'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-04-18' "execution_timestamp",
    b.id "broker_id",
    50 "amount",
    s.id "security_id",
    1.067008 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-04-18'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-04-18' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    0.295491 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-04-18'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-04-18' "execution_timestamp",
    b.id "broker_id",
    225 "amount",
    s.id "security_id",
    0.559228 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-04-18'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-04-18' "execution_timestamp",
    b.id "broker_id",
    50 "amount",
    s.id "security_id",
    0.851209 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-04-18'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-19' "execution_timestamp",
    b.id "broker_id",
    400 "amount",
    s.id "security_id",
    18.348624 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ICLN'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-19'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-19' "execution_timestamp",
    b.id "broker_id",
    15 "amount",
    s.id "security_id",
    0.052391 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-19'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-19' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    1.376842 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'LIT'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-19'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-19' "execution_timestamp",
    b.id "broker_id",
    150 "amount",
    s.id "security_id",
    1.784015 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'TAN'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-19'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-19' "execution_timestamp",
    b.id "broker_id",
    35 "amount",
    s.id "security_id",
    0.099187 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-19'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-19' "execution_timestamp",
    b.id "broker_id",
    50 "amount",
    s.id "security_id",
    1.006239 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-19'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-19' "execution_timestamp",
    b.id "broker_id",
    15 "amount",
    s.id "security_id",
    0.384418 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-19'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-19' "execution_timestamp",
    b.id "broker_id",
    10 "amount",
    s.id "security_id",
    0.237417 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-19'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-19' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    4.642526 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'URA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-19'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-21' "execution_timestamp",
    b.id "broker_id",
    75 "amount",
    s.id "security_id",
    1.200384 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-21'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-21' "execution_timestamp",
    b.id "broker_id",
    50 "amount",
    s.id "security_id",
    0.769823 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-21'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-21' "execution_timestamp",
    b.id "broker_id",
    225 "amount",
    s.id "security_id",
    0.548714 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-21'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-21' "execution_timestamp",
    b.id "broker_id",
    50 "amount",
    s.id "security_id",
    1.041233 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-21'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-03-21' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    0.285698 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-03-21'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-08-22' "execution_timestamp",
    b.id "broker_id",
    80 "amount",
    s.id "security_id",
    1.826901 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-08-22'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-08-22' "execution_timestamp",
    b.id "broker_id",
    120 "amount",
    s.id "security_id",
    2.245089 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-08-22'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-08-22' "execution_timestamp",
    b.id "broker_id",
    80 "amount",
    s.id "security_id",
    1.911132 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-08-22'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-08-22' "execution_timestamp",
    b.id "broker_id",
    160 "amount",
    s.id "security_id",
    0.502134 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-08-22'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-08-22' "execution_timestamp",
    b.id "broker_id",
    360 "amount",
    s.id "security_id",
    0.939261 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-08-22'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-25' "execution_timestamp",
    b.id "broker_id",
    80 "amount",
    s.id "security_id",
    1.916168 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-25'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-25' "execution_timestamp",
    b.id "broker_id",
    80 "amount",
    s.id "security_id",
    1.740644 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-25'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-25' "execution_timestamp",
    b.id "broker_id",
    120 "amount",
    s.id "security_id",
    2.225932 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-25'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-25' "execution_timestamp",
    b.id "broker_id",
    160 "amount",
    s.id "security_id",
    0.529714 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-25'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-07-25' "execution_timestamp",
    b.id "broker_id",
    360 "amount",
    s.id "security_id",
    0.989446 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-07-25'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-27' "execution_timestamp",
    b.id "broker_id",
    80 "amount",
    s.id "security_id",
    1.742919 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-27'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-27' "execution_timestamp",
    b.id "broker_id",
    80 "amount",
    s.id "security_id",
    1.925391 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-27'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-27' "execution_timestamp",
    b.id "broker_id",
    120 "amount",
    s.id "security_id",
    2.220988 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-27'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-27' "execution_timestamp",
    b.id "broker_id",
    160 "amount",
    s.id "security_id",
    0.540595 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-27'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-06-27' "execution_timestamp",
    b.id "broker_id",
    360 "amount",
    s.id "security_id",
    0.996981 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-06-27'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-31' "execution_timestamp",
    b.id "broker_id",
    150 "amount",
    s.id "security_id",
    2.504174 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VGK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-31'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-31' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    2.187705 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VEA'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-31'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-31' "execution_timestamp",
    b.id "broker_id",
    200 "amount",
    s.id "security_id",
    0.647417 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'QQQ'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-31'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-31' "execution_timestamp",
    b.id "broker_id",
    100 "amount",
    s.id "security_id",
    2.185792 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ARKK'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-31'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-05-31' "execution_timestamp",
    b.id "broker_id",
    450 "amount",
    s.id "security_id",
    1.187304 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VOO'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-05-31'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-10-29' "execution_timestamp",
    b.id "broker_id",
    850.029063 "amount",
    s.id "security_id",
    21.0873 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'BKE'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-10-29'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-10-29' "execution_timestamp",
    b.id "broker_id",
    850.004848 "amount",
    s.id "security_id",
    2.3606 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'LLY'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-10-29'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-10-29' "execution_timestamp",
    b.id "broker_id",
    850.4243 "amount",
    s.id "security_id",
    7.37 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'DKS'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-10-29'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-10-29' "execution_timestamp",
    b.id "broker_id",
    861.501276 "amount",
    s.id "security_id",
    38.1364 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'VIR'
    AND st.name = 'Magic Formula'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-10-29'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-10-14' "execution_timestamp",
    b.id "broker_id",
    599.9998176 "amount",
    s.id "security_id",
    7.76096 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'LEN'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-11-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-10-14' "execution_timestamp",
    b.id "broker_id",
    300.0002628 "amount",
    s.id "security_id",
    3.78597 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'PFG'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-11-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-10-14' "execution_timestamp",
    b.id "broker_id",
    599.999938 "amount",
    s.id "security_id",
    28.50356 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'RF'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-11-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-10-14' "execution_timestamp",
    b.id "broker_id",
    299.9999898 "amount",
    s.id "security_id",
    3.39597 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'SQM'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-11-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-11-14' "execution_timestamp",
    b.id "broker_id",
    600.000264 "amount",
    s.id "security_id",
    5.86224 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'CF'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-11-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-11-14' "execution_timestamp",
    b.id "broker_id",
    600.0000294 "amount",
    s.id "security_id",
    70.33998 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ICL'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-11-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-11-14' "execution_timestamp",
    b.id "broker_id",
    600.0000264 "amount",
    s.id "security_id",
    32.67974 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'UBS'
    AND st.name = 'The Acquirer''s Multiple'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-11-14'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

INSERT INTO market_transaction (direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
SELECT
    'Long' "direction",
    'Buy' "type",
    '' "description",
    '2022-09-19' "execution_timestamp",
    b.id "broker_id",
    400 "amount",
    s.id "security_id",
    18.348624 "nb_of_units",
    st.id strategy_id
FROM
    broker b,
    SECURITY s,
    strategy st
WHERE
    1 = 1
    AND b.name = 'etoro'
    AND s.name = 'ICLN'
    AND st.name = 'Market Dollar-Cost Averaging'
    AND NOT EXISTS (
        SELECT
            mt.id
        FROM
            market_transaction mt
        WHERE
            1 = 1
            AND mt.direction = 'Long'
            AND mt."type" = 'Buy'
            AND mt.description = ''
            AND mt.execution_timestamp = '2022-09-19'
            AND mt.broker_id = b.id
            AND mt.security_id = s.id
            AND mt.strategy_id = st.id);

