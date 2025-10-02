data voters_format;
	Format Name $21.;
	infile "/home/efoda0/my_shared_file_links/efoda0/learn-data-science-using-sas-studio-master/Datasets/Chapter 6/Voters_A.csv" 
		dlm=',' firstobs=2;
	input NAME $ YOB $  ENROLL $ DESIGNATE $ DT_ACCEPT $  CG 
		CTY $ DT_CHG $  DT_LAST_VPH $;
	*creating age as a new variable;
	age=year(today())-YOB;
run;

data voters_retain;
	retain NAME YOB age ENROLL DESIGNATE DT_ACCEPT CG CTY DT_CHG DT_LAST_VPH;
	set voters_format;

	if age>=340 then
		Delete;

	if (age>=18 and age<=24) then
		age_group='18-24';
	else if (age>=25 and age<=29) then
		age_group='25-29';
	else if (age>=30 and age<=39) then
		age_group='30-39';
	else if (age>=40 and age<=49) then
		age_group='40-49';
	else if (age>=50 and age<=64) then
		age_group='50-64';
	else if (age>=65) then
		age_group='65+';
	drop designate;
run;

proc print data=voters_retain;
run;
