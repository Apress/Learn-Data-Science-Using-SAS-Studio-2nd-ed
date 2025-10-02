data voters label;
	set work.voters;
	label 
'FIRST NAME'n='Name' 
YOB='Year Of Birth' 
ENROLL='Enrollment Code' 
		DESIGNATE='Special Designations' 
		'DT ACCEPT'n='Date Accepted (Date of Registration)' 
		CG='Congressional District' 
CTY='County ID' 
'DT CHG'n='Date Changed' 
		'DT LAST VPH'n='Date Of Last Statewide Election with VPH';
run;

proc print label;
run;
