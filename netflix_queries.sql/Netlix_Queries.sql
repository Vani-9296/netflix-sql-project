--FIND THE NEWEST 5 MOVIES
SELECT TOP 5 title, release_year
FROM dbo.netflix_titles
WHERE type = 'Movie'
ORDER BY release_year DESC;

--Find all movies released after 2015.
SELECT title, release_year
FROM dbo.netflix_titles
WHERE type = 'Movie'
  AND release_year > 2015;

--Count how many TV Shows are in the table.
SELECT COUNT(*) AS total_tv_shows
FROM dbo.netflix_titles
WHERE type = 'TV Show';

--Show the top 10 most common ratings.
SELECT TOP 10 rating, COUNT(*) AS total_count
FROM dbo.netflix_titles
GROUP BY rating
ORDER BY total_count DESC;

--Find all titles where country contains India.
SELECT title, country
FROM dbo.netflix_titles
WHERE country LIKE '%India%';

--Find rows where director is missing.
SELECT director, show_id
FROM dbo.netflix_titles
WHERE director IS NULL;

SELECT *
FROM dbo.netflix_titles
WHERE director IS NULL;

--Count titles released each year.
SELECT release_year, COUNT(*) AS total_titles
FROM dbo.netflix_titles
GROUP BY release_year
ORDER BY release_year;

--Show all titles sorted alphabetically.
SELECT title
FROM dbo.netflix_titles
ORDER BY title ASC;

--Find titles where [cast] contains a specific actor.
SELECT title, [cast]
FROM dbo.netflix_titles
WHERE [cast] LIKE '%Shah Rukh Khan%';

--Count how many titles belong to each type.
SELECT type, COUNT(*) AS total_titles
FROM dbo.netflix_titles
GROUP BY type;