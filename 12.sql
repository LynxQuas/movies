SELECT title FROM movies, people, stars
WHERE stars.movie_id = movies.id
AND people.id = stars.person_id
AND people.name IN ('Jennifer Lawrence', 'Bradley Cooper')
GROUP BY movies.title
HAVING COUNT (DISTINCT people.name ) = 2;