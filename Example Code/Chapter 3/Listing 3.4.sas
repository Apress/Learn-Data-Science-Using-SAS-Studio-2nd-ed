proc sgplot data=WORK.CANDIDATES2012 noautolegend;
	vbar 'candidate name'n / colorresponse=x colorstat=mean colormodel=(blue red silver green) categoryorder=respdesc;
	xaxis;
	yaxis grid;
run;
