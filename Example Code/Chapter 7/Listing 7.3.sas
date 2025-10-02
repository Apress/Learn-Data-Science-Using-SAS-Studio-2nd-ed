data current_values;
	Current_Date=today();
	Current_date1=date();
	Current_Time=time();
	Current_Datetime=datetime();
	format Current_Date Current_Date1 mmddyy10. Current_Time 
		time8. Current_Datetime datetime20.;
run;
proc print data=current_values;
run;
