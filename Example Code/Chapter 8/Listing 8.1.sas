data cleaned;
	infile datalines  dlm='|';
	input Voter_Name $ Address $50.;
	Voter_Clean=propcase(strip(Voter_Name));
	Upcase_State=upcase(substr(Address, length(Address)-7, 2));
	format Voter_Clean $30. Upcase_State $2.;
	datalines;
  joHN|123 Main St, Albany, Ny 12207
JANE DOE|456 Liberty Ave, Rochester, nY 14604
 Alice JOHNSON|789 Broadway Blvd, Buffalo, ny 14201
;
run;

proc print data=cleaned;
run;
