SELECT COUNT(rh.user_id) AS quantidade_musicas_no_historico
	FROM
		SpotifyClone.users AS u
	JOIN
		SpotifyClone.reproductions_history AS rh ON u.user_id = rh.user_id
	WHERE u.name = 'Bill';