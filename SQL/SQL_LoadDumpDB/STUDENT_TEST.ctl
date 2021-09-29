OPTIONS (skip=1)
LOAD DATA
CHARACTERSET UTF8
INFILE 'STUDENTS.CSV'
TRUNCATE
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID,
    TEST_ID SEQUENCE(1,0),
    SCORE,
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(2,0),
    S1 FILLER,
    SCORE,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(3,0),
    S1 FILLER,
    S2 FILLER,
    SCORE,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(4,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    SCORE,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(5,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    SCORE,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(6,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    SCORE,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(7,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    SCORE,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(8,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    SCORE,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(9,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    SCORE,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(10,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    SCORE,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(11,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    SCORE,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(12,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    SCORE,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(13,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    SCORE,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(14,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    SCORE,
    S14 FILLER,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(15,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    SCORE,
    S15 FILLER  
)

INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(   
    GROUP_CODE FILLER,
    STUDENT_ID POSITION(7),
    TEST_ID SEQUENCE(16,0),
    S1 FILLER,
    S2 FILLER,
    S3 FILLER,
    S4 FILLER,
    S5 FILLER,
    S6 FILLER,
    S7 FILLER,
    S8 FILLER,
    S9 FILLER,
    S10 FILLER,
    S11 FILLER,
    S12 FILLER,
    S13 FILLER,
    S14 FILLER,
    S15 FILLER,
    SCORE  
)