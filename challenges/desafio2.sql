SELECT 
(SELECT COUNT(*) FROM SpotifyClone.song) cancoes,
(SELECT COUNT(*) FROM SpotifyClone.artist) artistas,
(SELECT COUNT(*) FROM SpotifyClone.album) albuns;