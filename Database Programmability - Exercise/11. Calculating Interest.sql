CREATE FUNCTION ufn_calculate_future_value(initial DECIMAL(10,4), interest_rate DECIMAL(10,4), numYears INT)
RETURNS DECIMAL(10,4)
READS SQL DATA
BEGIN
	RETURN initial * POW(1 + interest_rate, numYears);
END;

CREATE PROCEDURE usp_calculate_future_value_for_account(acc_id INT, interest DECIMAL(10,4))
BEGIN
	SELECT a.id AS 'account_id', 
    ah.first_name, 
    ah.last_name, 
    a.balance AS 'current_balance', 
    ufn_calculate_future_value(a.balance, interest, 5) AS 'balance_in_5_years'
    FROM account_holders AS ah
    JOIN accounts AS a ON ah.id = a.account_holder_id
    WHERE a.id = acc_id;
END;
