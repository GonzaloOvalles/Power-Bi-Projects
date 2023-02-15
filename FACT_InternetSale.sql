-- Cleansed FACT_InternetSales Table --
SELECT
	[ProductKey] AS [ProductKey], 
  	[OrderDateKey] AS [OrderDateKey], 
  	[DueDateKey] AS [DueDateKey], 
  	[ShipDateKey] AS [ShipDateKey], 
  	[CustomerKey] AS [CustomerKey], 
  	[SalesOrderNumber] AS [SalesOrderNumber], 
  	[SalesAmount] AS [SalesAmount]
FROM 
	[AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE
	LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) - 2 --Ensures we only capture 2 years worth of data from extraction.
ORDER BY
	OrderDateKey ASC