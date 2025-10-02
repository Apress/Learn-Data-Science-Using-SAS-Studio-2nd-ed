data slogans_analysis;
    input Campaign_Slogan $50.;

    Found_Change = findw(Campaign_Slogan, "change", " ", "i") > 0;

    Slogan_Length = length(strip(Campaign_Slogan));

    Ref_Slogan = "Change starts with us";
    Slogan_Match = (compare(Campaign_Slogan, Ref_Slogan, 'i') = 0); 

    Contains_Only_Text = (verify(Campaign_Slogan, 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ') = 0);

    format Campaign_Slogan $50. Ref_Slogan $50.;
    datalines;
We believe in change and unity
For the future we deserve
Change starts with us
Unity! Progress! Hope!
;
run;

proc print data=slogans_analysis ;
run;
