/*Gouping s scatter plot*/
proc sgplot data=sashelp.class;
	scatter x=height y=weight / group=sex;
run;

/*Plotting three series*/
proc sgplot data=sashelp.stocks
	(where=(date >= '01jan2000'd and stock = 'IBM'));
	title 'Stock Trend';
	series x=date y=close;
	series x=date y=low;
	series x=date y=high;
run;

/*Combining Histograms with density plots*/
proc sgplot data=sashelp.heart;
 title 'Cholesterol Distribution';
 histogram cholesterol;
 density cholesterol;
 density cholesterol / type=kernel;
 keylegend / location=inside position=topright;
run;

/*Adding statistical limits to a dot plot*/
proc sgplot data=sashelp.class(where=(age<16));
	dot age / response=height stat=mean
			  limitstat=stddev numstd=1;
run;
