DATA MYDATA;
	SET sashelp.class;
	length research $11;

	SELECT;
		WHEN (age=15 and sex="F") research="include";
		OTHERWISE research="not include";
	END;
run;

PROC PRINT DATA=MYDATA;
RUN;