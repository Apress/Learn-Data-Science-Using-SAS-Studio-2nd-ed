data test;
	set sashelp.cars;
	make1=make;
	where make1='Acura';
run;
