SELECT
	name AS artista,
    alb.title as album,
    COUNT(ufa.artist_id) AS seguidores
	FROM
		SpotifyClone.artists AS art
	JOIN
		SpotifyClone.albums AS alb ON art.artist_id = alb.artist_id
	JOIN
		SpotifyClone.user_follow_artist AS ufa ON ufa.artist_id = art.artist_id
	GROUP BY
		alb.album_id
	ORDER BY
		seguidores DESC, art.name, alb.title;