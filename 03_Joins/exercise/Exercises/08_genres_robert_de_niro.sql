-- 8. The genres of movies that Robert De Niro has appeared in that were released in 2010 or later (6 rows)
SELECT DISTINCT g.genre_name 
FROM person AS p
	JOIN movie_actor AS ma ON ma.actor_id = p.person_id
	JOIN movie AS m ON m.movie_id = ma.movie_id
	JOIN movie_genre AS mg ON mg.movie_id = m.movie_id
	JOIN genre AS g ON g.genre_id = mg.genre_id
WHERE p.person_name = 'Robert De Niro' AND m.release_date >= '2010-01-01';

