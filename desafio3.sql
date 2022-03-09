SELECT
	name AS usuario, 
    COUNT(u.user_id) AS qtde_musicas_ouvidas,
    FORMAT(SUM(song.duration/60), 2) as total_minutos
FROM 
	SpotifyClone.users AS u
JOIN 
	SpotifyClone.reproductions_history AS rh ON u.user_id = rh.user_id
JOIN
	SpotifyClone.albums_songs AS song ON rh.music_id = song.song_id
GROUP BY
	u.user_id 
ORDER BY name;