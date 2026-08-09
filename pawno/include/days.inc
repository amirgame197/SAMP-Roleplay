#include <a_samp>

/*
native GetMonthName(month); //number of month OR the NAME of the month in CAPITAL LETTERS
native GetDayName(day); // NUMBER of DAY or name of DAY in CAPITAL letters
native GetCurrentMonth(); // returns the current month
native GetCurrentDay(); // returns the current DATE
native IsLeapYear(year); // returns if the INPUT YEAR is a LEAP YEAR
native GetMonthDays(month); // RETURNS THE NUMBER OF DAYS OF THE INPUT MONTH
native GetDay(date, month, year); // returns the >> DAY << (NOT DATE)
*/

#define     JANUARY     1
#define     FEBRUARY    2
#define     MARCH       3
#define     APRIL       4
#define     MAY         5
#define     JUNE        6
#define     JULY        7
#define     AUGUST      8
#define     SEPTEMBER   9
#define     OCTOBER     10
#define     NOVEMBER    11
#define     DECEMBER    12

#define     MONDAY  		1
#define     TUESDAY 		2
#define     WEDNESDAY 		3
#define     THURSDAY 		4
#define     FRIDAY 		5
#define     SATURDAY 		6
#define     SUNDAY 		7

stock GetMonthName(month)
{
	new ma[20];
	switch(month)
	{
	    case JANUARY: ma = "January";
	    case FEBRUARY: ma = "February";
	    case MARCH: ma = "March";
	    case APRIL: ma = "April";
	    case MAY: ma = "May";
	    case JUNE: ma = "June";
	    case JULY: ma = "July";
	    case AUGUST: ma = "August";
	    case SEPTEMBER: ma = "September";
	    case OCTOBER: ma = "October";
	    case NOVEMBER: ma = "November";
	    case DECEMBER: ma = "December";
	}
	return ma;
}

stock GetDayName(day)
{
	new da[20];
	switch(day)
	{
	    case 1: da = "Monday";
	    case 2: da = "Tuesday";
	    case 3: da = "Wednesday";
	    case 4: da = "Thursday";
	    case 5: da = "Friday";
	    case 6: da = "Saturday";
	    case 7: da = "Sunday";
	}
	return da;
}

stock GetCurrentMonth()
{
	new date[3];
	getdate(date[0], date[1], date[2]);
	return date[1];
}

stock GetCurrentDay()
{
	new date[3];
	getdate(date[0], date[1], date[2]);
	return date[2];
}

stock IsLeapYear(year)
{
    if(year % 4 == 0)
    {
        if(year % 100 == 0 && year % 400 != 0) return 0;
        else return 1;
    }
    else return 0;
}

stock GetMonthDays(month)
{
	if(month == JANUARY) return 31;
	else if(month == FEBRUARY)
	{
		new date[3];
		getdate(date[0], date[1], date[2]);
		if(IsLeapYear(date[0]) == 1) return 29;
		else return 28;
	}
	else if(month == MARCH) return 31;
	else if(month == APRIL) return 30;
	else if(month == MAY)   return 31;
	else if(month == JUNE)  return 30;
	else if(month == JULY) 	return 31;
	else if(month == AUGUST) return 31;
	else if(month == SEPTEMBER) return 30;
	else if(month == OCTOBER) return 31;
	else if(month == NOVEMBER) return 30;
	else if(month == DECEMBER) return 31;
}

stock GetDay(day, month, year)
{
  	if (month < 3)
 	{
 		month += 12;
 		year--;
  	}
  	return (((13*month+3)/5 + day + year + year/4 - year/100 + year/400) % 7)+1;
}