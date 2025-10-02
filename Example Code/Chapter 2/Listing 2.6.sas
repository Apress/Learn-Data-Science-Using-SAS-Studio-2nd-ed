data newlib.europeancars;
	set sashelp.cars;
	where origin='Europe';
run;

/* PROC CONTENTS for the entire library */
proc contents data=newlib._all_ nods;
run;

/* PROC CONTENTS for the specific dataset */
proc contents data=newlib.europeancars;
run;
