data election_event_separated;
    input Event_Date $10. Event_Time $8.;
    datalines;
11/03/2020 20:00:00
11/08/2016 21:00:00
11/06/2012 19:30:00
11/04/2008 22:15:00
11/02/2004 20:45:00
;
run;
data typecasting;
    set election_event_separated;
    Event_Date_Num = input(Event_Date, mmddyy10.);
    Event_Time_Num = input(Event_Time, time8.);
    Event_Datetime_Num = dhms(Event_Date_Num, hour(Event_Time_Num), minute(Event_Time_Num), second(Event_Time_Num));
    format Event_Date_Num mmddyy10. Event_Time_Num time8. Event_Datetime_Num datetime20.;
run;
