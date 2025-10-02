data polling_locations;
	input Full_Address $50.;
	City=scan(Full_Address, 2, ',');
	State=substr(Full_Address, find(Full_Address, "NY","i"), 2);
	datalines;
123 Main St, Albany, ny 12207
456 Liberty Ave, Rochester, NY 14604
789 Broadway Blvd, Buffalo, NY 14201
;
run;

proc print data=polling_locations;
run;
