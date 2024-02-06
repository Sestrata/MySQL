CREATE PROCEDURE usp_get_towns_starting_with(symbol VARCHAR(20))
BEGIN
	SELECT name FROM towns
    WHERE name LIKE CONCAT(symbol, '%')
    ORDER BY name;
END
