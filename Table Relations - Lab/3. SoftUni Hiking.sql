SELECT 
    routes.starting_point AS 'route_starting_point',
    routes.end_point AS 'route_end_point',
    routes.leader_id,
    CONCAT(campers.first_name, ' ', campers.last_name) AS 'leader_name'
FROM routes
	JOIN campers ON campers.id = routes.leader_id;
