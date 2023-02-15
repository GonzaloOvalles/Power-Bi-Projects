--Cleanse Dim_Date Table--
SELECT 
	[DateKey],
	[FullDateAlternateKey] AS DATE,
	
	[EnglishDayNameOfWeek] AS Day,
	
	[EnglishMonthName] AS Month,
	
	[WeekNumberOfYear] AS WeekNr,
	
	LEFT([EnglishMonthName], 3) AS MonthShort, --Column with the first 3 letters of a Month
	
	[MonthNumberOfYear] AS MonthNo,
	[CalendarQuarter] AS Quarter,
	[CalendarYear] AS Year
FROM 
	[dbo].[DimDate]
WHERE
	CalendarYear >= 2019
