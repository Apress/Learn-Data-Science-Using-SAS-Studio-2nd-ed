data date_time_datetime_example;
	month=11;
	day=3;
	year=2025;
	Event_Date=mdy(11, 3, 2020);
	format Event_Date mmddyy10.;
	
	hours=20;
	min=0;
	sec=0;
	Poll_Close_Time=hms(20, 0, 0);
	format Poll_Close_Time time8.;
	
	Event_Datetime=dhms(event_date, hours, min,sec);
	format Event_Datetime datetime20.;
run;

proc print data=date_time_datetime_example;
run;
