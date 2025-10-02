data NYC_Crime;
	length Borough $13;
	infile '/home/efoda0/my_shared_file_links/efoda0/learn-data-science-using-sas-studio-master/Datasets/Chapter 2/NYC_CRIME_DIM.txt' 
		dlm=',' firstobs=2;
	input Borough $ count Latitude Longitude;
run;
