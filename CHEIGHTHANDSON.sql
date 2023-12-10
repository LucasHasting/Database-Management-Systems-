alter session set NLS_DATE_FORMAT='MM-DD-YYYY';

--1
SELECT lastname,firstname,state FROM customers
WHERE state = 'NJ';

--2
SELECT order#,orderdate FROM orders
WHERE orderdate > '04-01-2009';

--3
SELECT title,category FROM books
WHERE category != 'FITNESS';

--4
SELECT customer#,lastname,state FROM customers
WHERE state in ('NJ','GA')
ORDER BY lastname ASC;

SELECT customer#,lastname,state FROM customers
WHERE state LIKE '%NJ%'
or state LIKE '%GA%'
ORDER BY lastname ASC;

--5
SELECT order#,orderdate FROM orders
WHERE orderdate <= '04-01-2009';

SELECT order#,orderdate FROM orders
WHERE orderdate < '04-01-2009'
or orderdate = '04-01-2009';

--6
SELECT lname,fname FROM author
WHERE lname LIKE '%IN%';

--7
SELECT lastname,referred FROM customers
WHERE referred IS NOT NULL;

--8
SELECT title,category FROM books
WHERE category LIKE '%CHILDREN%'
or category LIKE '%COOKING%';

SELECT title,category FROM books
WHERE category = 'CHILDREN'
or category = 'COOKING';

SELECT title,category FROM books
WHERE category in ('CHILDREN','COOKING')

--9
SELECT isbn,title FROM books
WHERE title LIKE '%_A_N%'
ORDER BY title DESC;

--10
SELECT title,pubdate FROM books
WHERE category = 'COMPUTER'
and EXTRACT(year FROM pubdate) = 2005;

SELECT title,pubdate FROM books
WHERE category = 'COMPUTER'
and pubdate > '12/31/2004'
and pubdate < '01/01/2006';

SELECT title,pubdate FROM books
WHERE category = 'COMPUTER'
and pubdate LIKE '%2005%';