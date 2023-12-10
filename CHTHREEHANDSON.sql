DROP TABLE CATEGORY;
CREATE TABLE CATEGORY 
    (
        catcode VARCHAR2(2), 
        catdesc VARCHAR2(10)
    );

DROP TABLE EMPLOYEES;
CREATE TABLE EMPLOYEES
    (
        emp# NUMBER(5), 
        lastname VARCHAR2(20), 
        fistname VARCHAR2(20), 
        job_class VARCHAR2(4)
    );

DROP TABLE BOOK_PRICING;
CREATE TABLE BOOK_PRICING
AS
    (
        select 
        isbn,
        cost,
        retail,
        category
        from books
    );

ALTER TABLE EMPLOYEES
ADD 
    (
        EmpDate DATE DEFAULT SYSDATE,
        EndDate DATE
         
        DROP COLUMN EndDate
    );

ALTER TABLE EMPLOYEES
MODIFY
    (job_class VARCHAR2(2));

RENAME EMPLOYEES TO JL_EMPS;

ALTER TABLE BOOK_PRICING
SET UNUSED (CATEGORY);

TRUNCATE TABLE BOOK_PRICING;

DROP TABLE BOOK_PRICING PURGE;
DROP TABLE JL_EMPS;
FLASHBACK TABLE JL_EMPS TO BEFORE DROP;