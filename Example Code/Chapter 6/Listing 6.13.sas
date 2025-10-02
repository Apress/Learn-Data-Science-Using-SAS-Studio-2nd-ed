data test;
	set sashelp.cars;
	make1=make;
run;

data test1;
	set test;
	where make1='Acura';
run;
