-- MySQL provides a way to return only unique results from our queries with the keyword DISTINCT. For example, to find all the unique titles within the company, we could run the following query:
SELECT DISTINCT title FROM titles;

-- List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;

-- Find all previous or current employees hired in the 90s and born on Christmas. Find the first 5 employees hired in the 90's by sorting by hire date and limiting your results to the first 5 records. 
-- Write a comment in your code that lists the five names of the employees returned.
SELECT * FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY hire_date ASC
LIMIT 5;
# Alselm Cappello, Baocai Kushner, Bouchung Schreiter, Petter S, Utz M 


-- Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the query to find the tenth page of results.
SELECT * FROM employees
WHERE hire_date LIKE '199%'
AND hire_date LIKE '%12-25'
ORDER BY hire_date DESC
LIMIT 5 OFFSET 45;

-- LIMIT and OFFSET can be used to create multiple pages of data. What is the relationship between OFFSET (number of results to skip), LIMIT (number of results per page), and the page number?
# limit is the amount of columns, offset is where you set the start of a column , pages are limits and offsets in increments