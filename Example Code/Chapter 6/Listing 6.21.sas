data all both f m ;
	merge few(in=f) many(in=m);
	by parcelid;
	if f=1 or m=1 then output all; *full;
	if f=1 and m=1 then output both; *inner;
	if f=1 and m=0 then output f; *left;
	if f=0 and m=1 then output m; *right;

run;
