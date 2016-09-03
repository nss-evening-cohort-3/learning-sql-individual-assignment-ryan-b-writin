/* Provide a query that shows the most purchased Media Type. */

SELECT MediaType, MAX(NumberSold) AS TotalSold FROM 
(SELECT MediaType.Name AS MediaType, Track.MediaTypeId, InvoiceLine.TrackId, SUM(Quantity) AS NumberSold FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY Track.MediaTypeId);
