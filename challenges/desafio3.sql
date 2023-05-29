SELECT 
u.user_name pessoa_usuaria,
COUNT(h.play_history) musicas_ouvidas,
ROUND((SUM(s.song_duration)/60), 2) total_minutos
FROM SpotifyClone.user u
JOIN SpotifyClone.history h ON u.user_id = h.user_id
JOIN SpotifyClone.song s ON h.play_history = s.song_id
GROUP BY user_name
ORDER BY user_name;