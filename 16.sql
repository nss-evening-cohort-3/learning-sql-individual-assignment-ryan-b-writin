/* Provide a query that shows all the Tracks, but displays no IDs. 
The resultant table should include the Album name, Media type and Genre. */

SELECT Track.Name, Album.Title, MediaType.Name, Genre.Name FROM Track
JOIN Album ON Album.AlbumId = Track.AlbumId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre ON Genre.GenreId = Track.GenreId
ORDER BY Track.Name;
