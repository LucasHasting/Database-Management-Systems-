CREATE SEQUENCE Customers_seq
INCREMENT BY 1
START WITH 1020
NOMAXVALUE
NOMINVALUE
NOCYCLE
NOCACHE;

INSERT INTO Customers (customer#, lastname, firstname, zip)
VALUES (customers_seq.NEXTVAL, 'Shoulders', 'Frank', '23567');

CREATE SEQUENCE My_First_seq
INCREMENT BY -3
START WITH 5
MAXVALUE 5
MINVALUE 0
NOCYCLE;

SELECT my_first_seq.NEXTVAL
FROM DUAL;

Alter sequence MY_FIRST_SEQ minvalue -1000;

create table email_log 
    ( 
    emailid numeric(10), 
    emaildate date, 
    customer# numeric(10), 
    primary key (emailid) 
    )

INSERT INTO email_log (emailid, emaildate, customer#)
VALUES (NULL, TO_DATE('10-25-2021', 'MM-DD-YYYY'), '1007');

INSERT INTO email_log (emailid, emaildate, customer#)
VALUES (default, TO_DATE('10-25-2021', 'MM-DD-YYYY'), '1008');

INSERT INTO email_log (emailid, emaildate, customer#)
VALUES (25, TO_DATE('10-25-2021', 'MM-DD-YYYY'), '1009');

CREATE SYNONYM NUMGEN
FOR MY_FIRST_SEQ;

SELECT NUMGEN.CURRVAL 
FROM DUAL;

DROP SYNONYM NUMGEN;
DROP SEQUENCE MY_FIRST_SEQ;

CREATE BITMAP INDEX customers_state_index
ON customers(state);

SELECT index_name
FROM user_indexes
WHERE index_name = 'CUSTOMERS_STATE_INDEX';

DROP INDEX customers_state_index;

CREATE INDEX lastname 
ON customers(lastname);

SELECT index_name
FROM user_indexes
WHERE index_name = 'LASTNAME';

DROP INDEX ind_lastname;

--11
CREATE INDEX shipping 
ON orders(order#,shipdate);