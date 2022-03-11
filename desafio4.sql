SELECT DISTINCT u.name AS usuario, IF( SUM(IF (YEAR(rh.reproduction_date) = 2021, 1, 0)) > 0, 'Usuário ativo', 'Usuário inativo' )  AS condicao_usuario
	FROM
		SpotifyClone.users AS u
	JOIN
		SpotifyClone.reproductions_history AS rh ON u.user_id = rh.user_id
	GROUP BY
		usuario;