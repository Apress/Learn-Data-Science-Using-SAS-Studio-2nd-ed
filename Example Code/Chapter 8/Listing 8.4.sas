data reports;
    input First_Name $ Last_Name $ Region $;
    Full_Name = catx(' ', First_Name, Last_Name);
    Report_Line = catt("Region: ", Region, ", Representative: ", Full_Name);
    datalines;
John Smith East
Linda Chen West
Ava Patel North
;
run;
proc print data= reports;
run;
