data components;
	Event_Datetime=dhms('03NOV2024'd, 20, 0, 0);
	
	/* Create a SAS datetime value: 3 Nov 2024 at 8:00 PM */
    Event_Datetime = dhms('03NOV2024'd, 20, 0, 0);

    /* Extract date and time components */
    Date_Only  = datepart(Event_Datetime);
    Time_Only  = timepart(Event_Datetime);

    /* Use Date_Only for date-related functions */
    Month_Value   = month(Date_Only);
    Day_Value     = day(Date_Only);
    Year_Value    = year(Date_Only);
    Week_Number   = week(Date_Only);
    Quarter       = qtr(Date_Only);
    Weekday_Num   = weekday(Date_Only); /* 1 = Sunday, 7 = Saturday */

    /* Use Time_Only for time-related functions */
    Hour_Value    = hour(Time_Only);
    Minute_Value  = minute(Time_Only);
    Second_Value  = second(Time_Only);

    format Event_Datetime datetime20.
           Date_Only mmddyy10.
           Time_Only time8.;run;

proc print data=components noobs;
run;
