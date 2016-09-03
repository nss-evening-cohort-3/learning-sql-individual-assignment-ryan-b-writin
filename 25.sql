/* Provide a query that shows the top 5 most purchased tracks over all. */

SELECT Track.Name AS TrackName,ROUND(SUM(Total),2) AS TotalSales FROM InvoiceLine 
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
GROUP BY TrackName
ORDER BY TotalSales DESC
LIMIT 5
