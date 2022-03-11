SELECT song.song_title AS nome, COUNT(rh.user_id) AS reproducoes
	FROM
		SpotifyClone.users AS u
	JOIN
		SpotifyClone.plans AS p ON u.plan_id = p.plan_id
	JOIN
		SpotifyClone.reproductions_history AS rh ON u.user_id = rh.user_id
	JOIN
		SpotifyClone.albums_songs as song ON song.song_id = rh.music_id    
	WHERE
		p.description = 'gratuito' OR p.description = 'pessoal'
	GROUP BY
		song.song_title
	ORDER BY
		song.song_title ASC;