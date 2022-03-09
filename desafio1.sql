CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;



CREATE TABLE artists (
	artist_id INT primary key AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

INSERT INTO artists(artist_id, `name`) VALUES
( 1,	'Walter Phoenix'),
( 2,	'Freedie Shannon'),
( 3,	'Lance Day'),
( 4,	'Peter Strong'),
( 5,	'Tyler Isle'),
( 6,	'Fog');




CREATE TABLE plans (
	plan_id INT PRIMARY KEY NOT NULL,
    description VARCHAR(100),
    price REAL(5,2) NOT NULL
) ENGINE = InnoDB;

INSERT INTO plans(plan_id, description, price) VALUES
( 1, 'gratuito', 		0.00),
( 2, 'familiar', 		7.99),
( 3, 'universitário', 	5.99),
( 4, 'pessoal', 		6.99);




CREATE TABLE albums (
	album_id INT PRIMARY KEY NOT NULL,
    title VARCHAR(100) NOT NULL,
    artist_id INT NOT NULL,
    release_year YEAR NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
)  ENGINE = InnoDB;

INSERT INTO albums (album_id, title, artist_id, release_year) VALUES
( 1,  'Envious',  1,  1990 ),
( 2,  'Exuberant',  1,  1993 ),
( 3,  'Hallowed Steam',  4,  1995 ),
( 4,  'Incandescent',  3,  1998 ),
( 5,  'Temporary Culture',  2,  2001 ),
( 6,  'Library of liberty',  2,  2003 ),
( 7,  'Chained Down',  5,  2007 ),
( 8,  'Cabinet of fools',  5,  2012 ),
( 9,  'No guarantees',  5,  2015 ),
( 10,  'Apparatus',  6,  2015 );





CREATE TABLE albums_songs (
    song_id   INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	album_id INT NOT NULL,
    song_title VARCHAR(100) NOT NULL,
    duration INT NOT NULL
) ENGINE = InnoDB;

INSERT INTO albums_songs(album_id, song_title, duration) VALUES
(1, 'Soul For Us', 200),
(1, 'Reflections Of Magic', 163),
(1, 'Dance With Her Own', 116),
(2, 'Troubles Of My Inner Fire', 203),
(2, 'Time Fireworks', 152),
(3, 'Magic Circus' , 105),
(3, 'Honey, So Do I' , 207),
(3, 'Sweetie, Let\'s Go Wild', 139),
(3,  'She Knows', 244),
(4, 'Fantasy For Me' , 100),
(4, 'Celebration Of More', 146),
(4,  'Rock His Everything', 223),
(4,  'Home Forever' , 231),
(4, 'Diamond Power' , 241),
(4, 'Let\'s Be Silly', 132),
(5, 'Thang Of Thunder', 240),
(5, 'Words Of Her Life', 185),
(5, 'Without My Streets', 176),
(6, 'Need Of The Evening', 190),
(6, 'History Of My Roses', 222),
(6, 'Without My Love', 111),
(6, 'Walking And Game', 123),
(6, 'Young And Father', 197),
(7, 'Finding My Traditions', 179),
(7,  'Walking And Man', 229),
(7,  'Hard And Time', 135),
(7, 'Honey, I\'m A Lone Wolf', 150),
(8, 'She Thinks I Won\'t Stay Tonight', 166),
(8, 'He Heard You\'re Bad For Me', 154),
(8, 'He Hopes We Can\'t Stay', 210),
(8, 'I Know I Know', 117),
(9, 'He\'s Walking Away', 159),
(9, 'He\'s Trouble', 138),
(9,  'I Heard I Want To Bo Alone', 120),
(9, 'I Ride Alone', 151),
(10, 'Honey', 79),
(10, 'You Cheated On Me', 95),
(10, 'Wouldn\'t It Be Nice', 213),
(10, 'Baby', 136),
(10, 'You Make Me Feel So..', 83);





CREATE TABLE users (
    user_id   INT NOT NULL PRIMARY KEY, 
	name VARCHAR(100) NOT NULL,
    age INT(100) NOT NULL,
    plan_id INT NOT NULL,
    signature_date DATE NOT NULL
) ENGINE = InnoDB;

INSERT INTO users(user_id, name, age, plan_id, signature_date) VALUES
(1,  'Thati', 23, 1, '2019-10-20'),
(2,  'Cintia', 35, 2, '2017-12-30'),
(3,  'Bill', 20, 3, '2019-06-05'),
(4,  'Roger', 45, 4, '2020-05-13'),
(5,  'Norman', 58, 4, '2017-02-17'),
(6,  'Patrick', 33, 2, '2017-01-06'),
(7,  'Vivian', 26, 3, '2018-01-05'),
(8,  'Carol', 19, 3, '2018-02-14'),
(9,  'Angelina', 42, 2, '2018-04-29'),
(10,  'Paul', 46, 2, '2017-01-17');





CREATE TABLE user_follow_artist (
	ufa_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    user_id   INT NOT NULL, 
	artist_id  INT NOT NULL
) ENGINE = InnoDB;

INSERT INTO user_follow_artist(user_id,	artist_id) VALUES
(1,  1),
(1,  2),
(1,  3),
(2,  1),
(2,  3),
(3,  4),
(3,  1),
(4,  2),
(5,  5),
(5,  6),
(5,  2),
(5,  3),
(6,  6),
(6,  3),
(6,  1),
(7,  4),
(7,  5),
(8,  1),
(8,  5),
(9,  6),
(9,  2),
(9,  3),
(10,  4),
(10,  6);






CREATE TABLE reproductions_history (
	reproduction_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    user_id   INT NOT NULL, 
	music_id  INT NOT NULL,
    music_title VARCHAR(100) NOT NULL,
    reproduction_date DATETIME NOT NULL
) ENGINE = InnoDB;

INSERT INTO reproductions_history(user_id, music_id, music_title, reproduction_date) VALUES
(1, 1, 'Honey', '2020-02-28 10:45:55'),
(1, 1, 'Walking And Man', '2020-05-02 05:30:35'),
(1, 1, 'Young And Father', '2020-03-06 11:22:33'),
(1, 1, 'Diamond Power', '2020-08-05 08:05:17'),
(1, 1, 'Let\'s Be Silly', '2020-09-14 16:32:22'),
(2, 2, 'I Heard I Want To Bo Alone', '2020-01-02 07:40:33'),
(2, 2, 'Finding My Traditions', '2020-05-16 06:16:22'),
(2, 2, 'Without My Love',  '2020-10-09 12:27:48'),
(2, 2, 'Baby', '2020-09-21 13:14:46'),
(3, 3, 'Magic Circus', '2020-11-13 16:55:13'),
(3, 3,  'Dance With Her Own', '2020-12-05 18:38:30'),
(3, 3, 'Hard And Time', '2020-07-30 10:00:00'),
(4, 4, 'Reflections Of Magic', '2021-08-15 17:10:10'),
(4, 4, 'I Ride Alone', '2021-07-10 15:20:30'),
(4, 4, 'Honey, I\'m A Lone Wolf', '2021-01-09 01:44:33'),
(5, 5, 'Honey, So Do I', '2020-07-03 19:33:28'),
(5, 5, 'Rock His Everything', '2017-02-24 21:14:22'),
(5, 5,  'Diamond Power', '2020-08-06 15:23:43'),
(5, 5, 'Soul For Us', '2020-11-10 13:52:27'),
(6, 6, 'Wouldn\'t It Be Nice', '2019-02-07 20:33:48'),
(6, 6,  'He Heard You\'re Bad For Me', '2017-01-24 00:31:17'),
(6, 6, 'He Hopes We Can\'t Stay', '2017-10-12 12:35:20'),
(6, 6, 'Walking And Game', '2018-05-29 14:56:41'),
(7, 7, 'Time Fireworks', '2018-05-09 22:30:49'),
(7, 7, 'Troubles Of My Inner Fire', '2020-07-27 12:52:58'),
(7, 7,  'Celebration Of More', '2018-01-16 18:40:43'),
(8, 8, 'Baby', '2018-03-21 16:56:40'),
(8, 8, 'You Make Me Feel So..', '2020-10-18 13:38:05'),
(8, 8,  'He\'s Walking Away', '2019-05-25 08:14:03'),
(8, 8, 'He\'s Trouble', '2021-08-15 21:37:09'),
(9, 9, 'Thang Of Thunder', '2021-05-24 17:23:45'),
(9, 9, 'Words Of Her Life', '2018-12-07 22:48:52'),
(9, 9, 'Sweetie, Let\'s Go Wild', '2021-03-14 06:14:26'),
(9, 9, 'She Knows', '2020-04-01 03:36:00'),
(10, 10, 'History Of My Roses', '2017-02-06 08:21:34'),
(10, 10, 'Without My Love', '2017-12-04 05:33:43'),
(10, 10, 'Rock His Everything', '2017-07-27 05:24:49'),
(10, 10,  'Home Forever', '2017-12-25 01:03:57');





