/* Provide a query that shows the most purchased track of 2013. */

SELECT TrackName, MAX(TotalSales2013) AS TopSales2013 FROM
(SELECT Track.Name AS TrackName,SUM(Total) AS TotalSales2013 FROM InvoiceLine 
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
WHERE Invoice.InvoiceDate LIKE '2013%' GROUP BY Track.Name)
