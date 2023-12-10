-- 1:WRONG
INSERT INTO orders (order#, customer#, orderdate)
VALUES (1021, 1009, TO_DATE('07-20-2009','MM-DD-YYYY'));

-- 2-3
UPDATE orders
SET shipzip = '33222'
WHERE order# = 1017;
COMMIT;

/* 
#4
INSERT INTO orders (order#, customer#, orderdate)
VALUES (1022, 2000, '06-AUG-05');

Error due to customer 2000 not existing in customers
table

#5
NSERT INTO orders (order#, customer#, orderdate)
VALUES (1023, 1009);

Constraint error due to orderdate having a (NOT NULL) constraint

#6
UPDATE books
SET cost = &cost
WHERE isbn = '&isbn';

#8
ROLLBACK;
*/

-- 9-10
DELETE FROM orderitems
WHERE order# = 1005;
ROLLBACK;
