data zillow_merged;
	merge few many;
	by parcelid;
run;
