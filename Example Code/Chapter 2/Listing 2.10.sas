LIBNAME students XLSX " /home/efoda0/my_shared_file_links/efoda0/learn-data-science-using-sas-studio-master/Datasets/Chapter 2/students.xlsx";

proc print data=students.students_info;
run;

proc print data=students.students_grades;
run;
