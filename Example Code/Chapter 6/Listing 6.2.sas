data voters_label;
	set work.voters;
	rename 
		'FIRST NAME'n=Name 
		YOB='Year Of Birth'n 
		ENROLL='Enrollment Code'n 
		DESIGNATE='Special Designations'n 
		'DT ACCEPT'n='Date of Registration'n 
		CG='Congressional District'n 
		CTY='County ID'n 
		'DT CHG'n='Date Changed'n 
		'DT LAST VPH'n='Date Of Last Election'n;
run;

proc print;
run;
