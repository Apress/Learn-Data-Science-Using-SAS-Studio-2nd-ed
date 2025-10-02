data voters_format;
	Format Name $21.;
	infile "/home/efoda0/my_shared_file_links/efoda0/learn-data-science-using-sas-studio-master/Datasets/Chapter 6/Voters_A.csv" 
		dlm=',' firstobs=2;
	input NAME $ YOB $  ENROLL $ DESIGNATE $ DT_ACCEPT $  CG 
		CTY $ DT_CHG $  DT_LAST_VPH $;
	drop designate;
run;

proc print;
run;
