--Question 1
SELECT title, length
FROM film
GROUP BY title, length
ORDER BY  length desc
LIMIT 10;

--Question 2
SELECT title, length
FROM film
GROUP BY title, length
ORDER BY  length desc
LIMIT 10
OFFSET 10;


--Question 3
SELECT COUNT(film_id)
FROM film
WHERE length = (select max(length) FROM film);

--Question 4
With scary_movies AS(
    SELECT * 
    FROM film
    WHERE rating = 'R'
    ORDER BY length DESC)
SELECT title, length, rating
from scary_movies
group by title, length, rating
order by title
LIMIT 10;

--Question 5
SELECT title, LENGTH(description) as long
FROM film
WHERE rating in ('G', 'PG', 'PG-13')
order by long desc
Limit 10;

 Dazed Punk                  |  130
 Egg Igby                    |  129
 Menagerie Rushmore          |  128
 Madre Gables                |  126
 Pilot Hoosiers              |  126
 Casablanca Super            |  126
 Arachnophobia Rollercoaster |  126
 Crow Grease                 |  125
 Crooked Frogmen             |  121
 Wonderland Christmas

--Question 6
SELECT COUNT(DIstinct(release_year))
FROM film;

