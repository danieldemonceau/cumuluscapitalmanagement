-- Excel Templates
-- Open a Long Position
INSERT INTO market_transaction(direction, "type", description, execution_timestamp, broker_id, amount, security_id,  nb_of_units, strategy_id)
SELECT
'Long' "direction"
, 'Buy' "type"
, '' "description"
, '

' "execution_timestamp"
, b.id "broker_id"
, 

 "amount"
, s.id "security_id"
, 

 "nb_of_units"
 , st.id strategy_id
FROM broker b
, security s
, strategy st
WHERE 1 = 1
AND b.name = 'etoro'
AND s.name = '

'
AND st.name = '

';