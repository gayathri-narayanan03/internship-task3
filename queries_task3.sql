SELECT-
SELECT * FROM `internship3-485011.internship.Superstore` LIMIT 10;

WHERE-
SELECT *
FROM `internship3-485011.internship.Superstore`
WHERE Category = 'Technology';

ORDER BY-
SELECT *
FROM `internship3-485011.internship.Superstore`
ORDER BY Sales DESC
LIMIT 10;

GROUP BY + SUM-
SELECT Category, SUM(Sales) AS total_sales
FROM `internship3-485011.internship.Superstore`
GROUP BY Category;

HAVING-
SELECT Category, SUM(Sales) AS total_sales
FROM `internship3-485011.internship.Superstore`
GROUP BY Category
HAVING SUM(Sales) > 500000;

BETWEEN-
SELECT *
FROM `internship3-485011.internship.Superstore`
WHERE `Order Date` BETWEEN '2017-01-01' AND '2017-03-31';

LIKE-
SELECT *
FROM `internship3-485011.internship.Superstore`
WHERE `Customer Name` LIKE '%Alex%';

Top 5 customers-
SELECT `Customer Name`, SUM(Sales) AS total_spent
FROM `internship3-485011.internship.Superstore`
GROUP BY `Customer Name`
ORDER BY total_spent DESC
LIMIT 5;
