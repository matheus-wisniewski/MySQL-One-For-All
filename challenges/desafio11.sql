SELECT a.album_name album, COUNT(a.album_name) favoritadas
FROM SpotifyClone.favorite_songs f
JOIN SpotifyClone.song s ON f.song_id = s.song_id
JOIN SpotifyClone.album a ON s.album_id = a.album_id
GROUP BY a.album_name
ORDER BY favoritadas DESC, album
LIMIT 3;