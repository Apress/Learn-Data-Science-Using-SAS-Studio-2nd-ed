ods graphics / reset width=6.4in height=4.8in imagemap;

proc sgplot data=WORK.SEATTLE_WAGES (where=('AGE RANGE'n ne 'Grand Total' and 
		'AGE RANGE'n ne 'under 20'));
	scatter x='AGE RANGE'n y='Total Average of HOURLY RATE'n /;
	xaxis grid;
	yaxis grid;
run;

ods graphics / reset;