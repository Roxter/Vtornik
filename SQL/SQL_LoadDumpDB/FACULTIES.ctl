LOAD DATA
CHARACTERSET UTF8
INFILE 'FACULTIES.CSV'
TRUNCATE
INTO TABLE STUDENT_DB.FACULTY
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
    FACULTY_LETTER,
    FACULTY_NAME
)
