CREATE FUNCTION ufn_calculate_future_value
(initial DECIMAL(19,4), interest_rate DOUBLE, numYears INT)
RETURNS DECIMAL(19,4)
READS SQL DATA
BEGIN
RETURN initial * POW(1 + interest_rate, numYears);
END
