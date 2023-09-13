SELECT title FROM movies, stars, people, ratings
WHERE movies.id = stars.movie_id
AND stars.person_id = people.id
AND people.name = 'Chadwick Boseman'
AND ratings.movie_id = movies.id
ORDER BY rating DESC
LIMIT 5;