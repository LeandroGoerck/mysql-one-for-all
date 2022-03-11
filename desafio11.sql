SELECT
	song_title AS nome_musica,
  changeWords(song_title) AS novo_nome
FROM
	SpotifyClone.albums_songs
WHERE
	song_title IN('Dance With Her Own', 'Let\'s Be Silly', 'Magic Circus', 'Troubles Of My Inner Fire', 'Without My Streets')
ORDER BY
	song_title ;