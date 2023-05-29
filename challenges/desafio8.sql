SELECT art.artist_name artista, 
alb.album_name album
FROM SpotifyClone.album alb
INNER JOIN SpotifyClone.artist art ON art.artist_id = alb.artist_id
WHERE art.artist_id = 3
ORDER BY alb.album_name;