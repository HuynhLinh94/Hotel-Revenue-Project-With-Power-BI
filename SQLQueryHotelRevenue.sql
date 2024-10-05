WITH hotels AS(
SELECT * FROM [dbo].['2018$']
UNION 
SELECT * FROM [dbo].['2019$']
UNION  
SELECT * FROM [dbo].['2020$'])
--SELECT hotel, arrival_date_year, 
--	round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as Revenue
--FROM hotels 
--GROUP BY hotel,arrival_date_year 
--ORDER BY Revenue ASC;
SELECT * FROM hotels 
LEFT JOIN [dbo].[market_segment$] AS ms
	ON hotels.market_segment = ms.market_segment
LEFT JOIN [dbo].[meal_cost$] AS mc
	ON hotels.meal = mc.meal

--SELECT * FROM [dbo].[market_segment$]
--SELECT * FROM [dbo].[meal_cost$]

--USE master;
--ALTER DATABASE PortfolioProject SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
--ALTER DATABASE PortfolioProject MODIFY NAME = HotelRevenue;
--ALTER DATABASE HotelRevenue SET MULTI_USER;
--SELECT * FROM sys.dm_exec_sessions WHERE database_id = DB_ID('PortfolioProject');

