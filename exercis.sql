--1
SELECT * FROM  laureates
SELECT * FROM nobels
--2
SELECT * FROM nobels
 WHERE category 
 LIKE 'Chemistry'
--3
SELECT category_fullname 
FROM nobels
WHERE category = 'Economic Sciences' 
LIMIT 1;
--4
SELECT motivation
FROM nobels
WHERE category = 'Peace'
--5
SELECT category_fullname
FROM  nobels
WHERE award_year = '2019'
--6
SELECT category, award_year
FROM nobels
WHERE date_awarded BETWEEN '2007-10-12' AND '2019-10-11'
--7
SELECT category_fullname, award_year
FROM nobels
WHERE category = 'chemistry'
--8
SELECT category_fullname, award_year
FROM nobels
WHERE category = 'Chemistry'
ORDER BY award_year DESC
--9
SELECT category, motivation, prize_amount
FROM nobels
WHERE prize_amount >'500000'
--10
SELECT category, award_year
FROM nobels
WHERE category = 'Physics'
--11
SELECT category, award_year, prize_amount
FROM nobels
WHERE prize_amount BETWEEN '100000' AND '300000'
--12
SELECT SUM(prize_amount)
FROM nobels
WHERE category IN ('Peace', 'literature')
--13
SELECT affiliations, category, prize_amount
FROM nobels
ORDER BY prize_amount ASC 
LIMIT 5 
--14
SELECT DISTINCT award_year
FROM nobels
ORDER BY award_year DESC
LIMIT 7;
--15
SELECT award_year, category_fullname, date_awarded
FROM nobels
WHERE date_awarded IS NULL
--16
SELECT SUM(prize_amount)
FROM nobels
WHERE date_awarded IS NULL
--17
SELECT known_name
FROM laureates
--18
SELECT known_name, birth_date
FROM laureates
ORDER BY birth_date ASC
LIMIT 10
--19
SELECT full_name, gender, death_date
FROM laureates
--20
SELECT full_name, birth_country
FROM laureates
ORDER BY birth_country DESC
LIMIT 10
--21
SELECT full_name, birth_city
FROM laureates
ORDER BY birth_city DESC
LIMIT 3
--22
SELECT DISTINCT birth_country
FROM laureates
WHERE death_date IS NULL
--23
SELECT DISTINCT birth_city
FROM laureates
ORDER BY birth_city DESC
OFFSET 4
LIMIT 3

--24 
