SELECT v_position_nb_of_units_opened, v_position_amount_opened, v_position_nb_of_units_closed, v_position_amount_closed, v_position_nb_of_units_open, v_position_amount_open
FROM position p
JOIN position_market_transaction pmt ON pmt.position_id = p.id
JOIN market_transaction mt ON mt.id = pmt.market_transaction_id
WHERE 1 = 1
AND p.status = 'Open'
AND mt."type" = CASE WHEN ((p_direction = 'Long' AND p_type = 'Buy') OR (p_direction = 'Short' AND p_type = 'Sell')) THEN p_type ELSE (CASE WHEN p_type = 'Buy' THEN 'Sell' WHEN p_type = 'Sell' THEN 'Buy' END) END 
AND mt.security_id = p_security_id
AND mt.broker_id = p_broker_id
GROUP BY p.id;

