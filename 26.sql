/* Provide a query that shows the top 3 best selling artists. */

SELECT Artist.Name, SUM(Quantity) * InvoiceLine.UnitPrice AS TotalSold FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
GROUP BY InvoiceLine.TrackId
ORDER BY TotalSold DESC
LIMIT 3
