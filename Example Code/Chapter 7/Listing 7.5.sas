data election_event_times;
    input Event_Start Event_End;
    format Event_Start Event_End datetime20.;
    datalines;
1892390400 1892433600   
1794066900 1794081900   
1695753000 1695790800   
1597421700 1597455900   
1499119500 1499141100   
;
run;
data duration;
	set election_event_times;
	Duration=Event_End - Event_Start;
	Duration_Hours=intck('hour', Event_Start, Event_End);
	Duration_Minutes=intck('minute', Event_Start, Event_End);
	format Duration time8.;
run;
proc print data=duration;
run;
