SELECT rh.music_title AS cancao, COUNT(rh.music_id) AS reproducoes
	FROM
		SpotifyClone.albums_songs as song
	JOIN
		SpotifyClone.reproductions_history as rh ON song.song_id = rh.music_id
	GROUP BY
		rh.music_title
	ORDER BY
		reproducoes DESC, rh.music_title ASC
	LIMIT 2;