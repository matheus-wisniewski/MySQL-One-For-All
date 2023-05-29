SELECT s.song_name cancao, COUNT(h.user_id) reproducoes
FROM SpotifyClone.song s
JOIN SpotifyClone.history h ON s.song_id = h.play_history
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
