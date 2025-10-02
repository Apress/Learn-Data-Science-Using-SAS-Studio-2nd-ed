PROC IMPORT DATAFILE="/home/efoda0/my_shared_file_links/efoda0/learn-data-science-using-sas-studio-master/Datasets/Chapter 2/students.xlsx "
    OUT=students.students_grades
    DBMS=XLSX
    REPLACE;
    SHEET="Sheet2"; /* Specify the sheet name */
    GETNAMES=YES;
RUN;
