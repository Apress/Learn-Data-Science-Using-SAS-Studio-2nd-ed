DATA MYDATA;
	SET sashelp.class;
	length status $12;

	SELECT(age);
		when (10) status="child";
		WHEN (11, 12) status="preteen";
		OTHERWISE status="teenager";
	END;
run;

PROC PRINT DATA=MYDATA;
RUN;