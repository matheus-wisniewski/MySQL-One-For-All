SELECT
CASE
WHEN u.user_age < 31 THEN 'Até 30 anos'
WHEN u.user_age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
WHEN u.user_age > 60  THEN 'Maior de 60 anos'
END faixa_etaria,
COUNT(DISTINCT u.user_id) total_pessoas_usuarias,
COUNT(f.user_id) total_favoritadas
FROM SpotifyClone.user u
LEFT JOIN SpotifyClone.favorite_songs f
ON u.user_id = f.user_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;