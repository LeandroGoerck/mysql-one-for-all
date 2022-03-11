SELECT
	name AS artista,
    alb.title as album
	FROM
		SpotifyClone.artists AS art
	JOIN
		SpotifyClone.albums AS alb ON art.artist_id = alb.artist_id
	WHERE
		name = 'Walter Phoenix'
    ORDER BY
		album;