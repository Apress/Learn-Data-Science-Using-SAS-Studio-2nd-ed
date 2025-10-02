data test;
	set sashelp.cars;
	make1=make;

	if make1='Acura';
run;
