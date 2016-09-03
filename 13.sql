/* Provide a query that includes the purchased track name AND artist name with each invoice line item. */

SELECT InvoiceLineId, Track.Name AS 'Track Name', Artist.Name AS 'Artist Name' FROM InvoiceLine 
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Artist.ArtistId = Album.ArtistId
ORDER BY InvoiceLineId;
