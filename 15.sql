/* Provide a query that shows the total number of tracks in each playlist. 
The Playlist name should be include on the resulant table. */

SELECT Playlist.Name, COUNT(*) as 'No. of tracks' FROM PlaylistTrack 
JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY Playlist.PlaylistId;

