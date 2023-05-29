SELECT u.user_name pessoa_usuaria,
  CASE WHEN MAX(h.last_heard) >= '2021-01-01' THEN 'Ativa'
    ELSE 'Inativa' END status_pessoa_usuaria
FROM SpotifyClone.user u
JOIN SpotifyClone.history h ON u.user_id = h.user_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;