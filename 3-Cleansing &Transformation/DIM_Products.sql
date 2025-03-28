--Cleansed and Prepared DIM_Product Table--
--DimProduct Table AS p // DimProduct Category AS pc // DimProductSubcategory AS ps
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS [ProductItemCode], 
  --      ,[ProductSubcategoryKey]
  --      ,[WeightUnitMeasureCode]
  --      ,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS [ProductName], 
  ps.EnglishProductSubcategoryName AS [Sub Category], --Joined in from Sub Category Table,
  pc.EnglishProductCategoryName AS [Product Category], -- Joined in from Category Table,
  --      ,[SpanishProductName]
  --      ,[FrenchProductName]
  --      ,[StandardCost]
  --      ,[FinishedGoodsFlag]
  p.[Color] AS [Product Color], 
  --      ,[SafetyStockLevel]
  --      ,[ReorderPoint]
  --      ,[ListPrice]
  p.[Size] AS [Product Size], 
  --      ,[SizeRange]
  --      ,[Weight]
  --      ,[DaysToManufacture]
  p.[ProductLine] AS [Product Line], 
  --      ,[DealerPrice]
  --      ,[Class]
  --      ,[Style]
  p.[ModelName] AS [Product Model Name], 
  --      ,[LargePhoto]
  p.[EnglishDescription] AS [Product Description], 
  --      ,[FrenchDescription]
  --      ,[ChineseDescription]
  --      ,[ArabicDescription]
  --      ,[HebrewDescription]
  --      ,[ThaiDescription]
  --      ,[GermanDescription]
  --      ,[JapaneseDescription]
  --      ,[TurkishDescription]
  --      ,[StartDate]
  --      ,[EndDate]
  ISNULL(p.Status, 'Outdated') AS [Product Status] --NULL values in Product Status are filled with Outdated, 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC  











