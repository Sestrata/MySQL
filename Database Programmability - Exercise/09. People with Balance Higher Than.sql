CREATE PROCEDURE usp_get_holders_with_balance_higher_than(target_salary DECIMAL(19,4))
BEGIN
	SELECT ah.first_name, ah.last_name FROM account_holders AS ah
    JOIN accounts AS a ON ah.id = a.account_holder_id
    WHERE target_salary < (SELECT SUM(balance) 
                           FROM accounts 
                           WHERE account_holder_id = ah.id)
	GROUP BY ah.id
	ORDER BY ah.id;
END
