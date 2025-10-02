data all;
	set voters_democrat voters_republican;
run;

proc print data=all;
run;
