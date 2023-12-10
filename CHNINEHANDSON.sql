--1
SELECT b.title, p.contact, p.phone
FROM books b, publisher p
WHERE b.pubid = p.pubid;

--2
SELECT c.firstname, c.lastname, o.order#
FROM customers c, orders o
WHERE c.customer# = o.customer#
AND o.shipdate IS NULL 
ORDER BY o.orderdate;

--3
SELECT DISTINCT c.lastname, c.customer#
FROM books b, orders o, orderitems i, customers c
WHERE c.customer# = o.customer#
AND o.order# = i.order#
AND i.isbn = b.isbn
AND c.state = 'FL'
AND b.category = 'COMPUTER';

--4
SELECT DISTINCT b.title
FROM customers c, orders o, orderitems i, books b
WHERE c.customer# = o.customer#
AND o.order# = i.order#
AND i.isbn = b.isbn 
AND c.firstname = 'JAKE'
AND c.lastname = 'LUCAS';

--5
SELECT b.title, i.paideach-cost
FROM customers c, orders o, orderitems i, books b
WHERE c.customer# = o.customer#
AND o.order# = i.order#
AND i.isbn = b.isbn
AND c.firstname = 'JAKE'
AND c.lastname = 'LUCAS'
ORDER BY o.orderdate, i.paideach-b.cost DESC;

--6
SELECT b.title
FROM books b, bookauthor ba, author a
WHERE b.isbn = ba.isbn
AND ba.authorid = a.authorid
AND a.lname = 'ADAMS';

--7
SELECT p.gift
FROM books b, promotion p
WHERE b.retail BETWEEN p.minretail AND p.maxretail
AND b.title = 'SHORTEST POEMS';

--8
SELECT a.lname, a.fname, b.title
FROM books b, orders o, orderitems i, customers c, bookauthor t, author a
WHERE c.customer# = o.customer#
AND o.order# = i.order#
AND i.isbn = b.isbn
AND b.isbn = t.isbn
AND t.authorid = a.authorid
AND c.firstname = 'BECCA'
AND c.lastname = 'NELSON';

--9
SELECT b.title, o.order#, c.state
FROM books b, orders o, orderitems i, customers c
WHERE c.customer# (+) = o.customer#
AND o.order# (+) = i.order#
AND i.isbn (+) = b.isbn;

--10
SELECT e.fname || ' ' || e.lname "Employee Name", e.job, m.fname || ' ' || m.lname "Manager Name"
FROM employees e, employees m
WHERE e.mgr = m.empno (+)
ORDER BY "Manager Name";

