/* Provide a query that shows the total sales per country. Which country's customers spent the most? */

SELECT BillingCountry, ROUND(SUM(Total), 2) AS NationalSales, TopBilledCountry FROM 
(SELECT NationalSales.BillingCountry AS TopBilledCountry, MAX(NationalSales.TotalPerCountry) AS TopSpendingCountry FROM 
(SELECT BillingCountry, SUM(Total) AS TotalPerCountry FROM Invoice GROUP BY BillingCountry) 
AS NationalSales) AS Top
JOIN Invoice
GROUP BY BillingCountry;

