SELECT art.artist_name artista,
alb.album_name album,
COUNT(f.user_id) pessoas_seguidoras
FROM SpotifyClone.artist art
JOIN SpotifyClone.album alb ON alb.artist_id = art.artist_id
LEFT JOIN SpotifyClone.follow f ON f.artist_id = art.artist_id
GROUP BY art.artist_id, alb.album_id
ORDER BY pessoas_seguidoras DESC, artista, album;