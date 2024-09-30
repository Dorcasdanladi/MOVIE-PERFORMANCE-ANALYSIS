use [NETFLIX MOVIE]
go
select * from MOVIES

--1. Highest Grossing Movies with Low Budgets
SELECT TOP 20
    name, 
    budget, 
    gross,
    gross - budget AS Profit
FROM movies
WHERE budget < 10000000
ORDER BY gross DESC


--2. Average Revenue by Budget
SELECT TOP 20
    CASE 
        WHEN budget < 10000000 THEN 'Low Budget (<10M)'
        WHEN budget BETWEEN 10000000 AND 50000000 THEN 'Medium Budget (10M - 50M)'
        WHEN budget > 50000000 THEN 'High Budget (>50M)'
        ELSE 'Unknown'
    END AS BudgetCategory,
    AVG(gross) AS AvgRevenue
FROM movies
GROUP BY Budget;


--3. Popularity of Genres Over Time
--First clean the Realeased column
UPDATE MOVIES
SET Released =
CASE
WHEN CHARINDEX('(', Released) >
0
THEN LEFT(Released,
CHARINDEX('(', Released) -1)
ELSE Released
END
WHERE CHARINDEX('(', Released) > 0

--Answear
SELECT 
    genre, 
    YEAR(Released) AS ReleaseYear, 
    COUNT(*) AS MovieCount
FROM movies
GROUP BY genre, YEAR(Released)
ORDER BY ReleaseYear, MovieCount DESC;


--4. Top 10 Highest-Rated Movies
SELECT TOP 20 
    name, 
    rating, 
    gross, 
    budget,
    genre
FROM movies
ORDER BY rating DESC, gross DESC;


--5. Popular Genres Over Time (With a Minimum Threshold)
SELECT 
    genre, 
    YEAR(released) AS ReleaseYear, 
    COUNT(*) AS MovieCount
FROM movies
GROUP BY genre, YEAR(released)
HAVING COUNT(*) > 10
ORDER BY ReleaseYear, MovieCount DESC;


--6. Growth of Blockbuster Releases Over Time
SELECT 
    YEAR(released) AS ReleaseYear, 
    COUNT(*) AS BlockbusterCount
FROM movies
WHERE gross > 100000000
GROUP BY YEAR(released)
ORDER BY ReleaseYear;


--7. Find movies where the director and writer are the same person
SELECT 
name FROM movies WHERE director = writer;


--8. List all directors who directed more than 3 movies
SELECT 
director, COUNT(*) AS movie_count FROM movies GROUP BY director HAVING COUNT(*) > 3;


--9. List movies with the highest profit margins
SELECT 
    name, 
    budget, 
    gross, 
    (gross - budget) AS Profit, 
    ((gross - budget) / budget) * 100 AS ProfitMargin
FROM movies
WHERE budget > 0 AND gross > 0
ORDER BY ProfitMargin DESC;


--10. Company that produced the highest movies
SELECT 
    company, 
    COUNT(*) AS MovieCount
FROM movies
WHERE company IS NOT NULL
GROUP BY company
ORDER BY MovieCount DESC;









