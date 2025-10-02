data numeric_special;
/*Date*/
	unformatted_Event_Date='03NOV2020'd;
	formatted_Event_Date=unformatted_Event_Date;

/*Time*/
	unformatted_Poll_Close_Time='20:00:00't;	formatted_Poll_Close_Time=unformatted_Poll_Close_Time;

/*Datetime*/
	unformatted_Event_Datetime='03NOV2020:20:00:00'dt;
	formatted_Event_Datetime=unformatted_Event_Datetime;

	format formatted_Event_Date mmddyy10.        
             formatted_Poll_Close_Time time8. 
             formatted_Event_Datetime datetime20.;
run;

proc print data=numeric_special;
run;
