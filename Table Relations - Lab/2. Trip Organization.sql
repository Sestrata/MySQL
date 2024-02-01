SELECT 
    vehicles.driver_id, 
    vehicle_type,
    CONCAT(campers.first_name, ' ', campers.last_name) AS 'drive_name'
FROM vehicles
	JOIN campers ON campers.id = vehicles.driver_id;
