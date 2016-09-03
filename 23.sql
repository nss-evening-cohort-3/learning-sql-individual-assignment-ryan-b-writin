/* Provide a query that shows the total sales per country. Which country's customers spent the most? */

SELECT BillingCountry, ROUND(SUM(Total), 2) AS NationalSales, TopSpendingCountry FROM 
(SELECT NationalSales.BillingCountry AS TopSpendingCountry, MAX(NationalSales.TotalPerCountry) AS TopSpent FROM 
(SELECT BillingCountry, SUM(Total) AS TotalPerCountry FROM Invoice GROUP BY BillingCountry) AS NationalSales) 
AS Top 
JOIN Invoice GROUP BY BillingCountry;
