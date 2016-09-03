/* Provide a query that shows the top 5 most purchased tracks over all. */

SELECT Track.Name, SUM(Quantity) * InvoiceLine.UnitPrice AS TotalSold FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
GROUP BY InvoiceLine.TrackId
ORDER BY TotalSold DESC
LIMIT 5
