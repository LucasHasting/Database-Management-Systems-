CREATE TABLE store_reps
(
    rep_ID NUMBER(5),
    last VARCHAR2(15) Not Null,
    first VARCHAR2(10) Not Null,
    comm CHAR(1) Default 'Y',
    base_Salery Number(7,2),
    CONSTRAINT CommC Check (
            comm = 'Y' 
            OR comm = 'N' 
          ),
    CONSTRAINT Base_SC Check(
            Base_Salery > 0
          ),
    Primary Key (rep_ID)
);

CREATE TABLE BOOK_STORES
(
    Store_ID NUMBER(8),
    Name VARCHAR2(30) UNIQUE Not Null,
    Contact VARCHAR2(30),
    Rep_ID NUMBER(5),
    CONSTRAINT Valid FOREIGN KEY (Rep_ID) REFERENCES STORE_REPS(rep_Id) ON DELETE CASCADE,
    Primary Key (Store_ID)
);

CREATE TABLE REP_CONTRACTS
(
    Store_ID NUMBER(8),
    Name VARCHAR2(5),
    Quarter CHAR(3),
    REP_ID NUMBER(5),
    Constraint ValidOne Primary Key (Store_ID, Quarter, REP_ID),
    Constraint ValidTwo FOREIGN KEY (Store_ID) REFERENCES Book_stores (Store_ID),
    Constraint ValidThree FOREIGN KEY (REP_ID) REFERENCES store_reps (rep_ID)
);

SELECT * FROM user_cons_columns WHERE table_name = 'STORE_REPS';

ALTER TABLE store_reps DISABLE 
constraint Base_SC; 
ALTER TABLE store_reps ENABLE 
constraint Base_SC; 