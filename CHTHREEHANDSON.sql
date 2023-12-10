--Number 1
DROP TABLE CATEGORY;
CREATE TABLE CATEGORY 
    (
        catcode VARCHAR2(2), 
        catdesc VARCHAR2(10)
    );

--Number 2
DROP TABLE EMPLOYEES;
CREATE TABLE EMPLOYEES
    (
        emp# NUMBER(5), 
        lastname VARCHAR2(20), 
        fistname VARCHAR2(20), 
        job_class VARCHAR2(4)
    );

--Number 7
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
        --Number 3
        EmpDate DATE DEFAULT SYSDATE,
        EndDate DATE
         
        --Number 5
        DROP COLUMN EndDate
    );

--Number 4
ALTER TABLE EMPLOYEES
MODIFY
    (job_class VARCHAR2(2));

--Number 6
RENAME EMPLOYEES TO JL_EMPS;

--Number 8
ALTER TABLE BOOK_PRICING
SET UNUSED (CATEGORY);

--Number 9
TRUNCATE TABLE BOOK_PRICING;

--Number 10
DROP TABLE BOOK_PRICING PURGE;
DROP TABLE JL_EMPS;
FLASHBACK TABLE JL_EMPS TO BEFORE DROP;