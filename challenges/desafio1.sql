DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plan(
    plan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plan_type VARCHAR(50) UNIQUE NOT NULL,
    plan_value DECIMAL(3, 2)
) engine = InnoDB;

CREATE TABLE SpotifyClone.user(
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    user_age INT NOT NULL,
    plan_id INT NOT NULL,
    signature_date DATE NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artist(
    artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(50) NOT NULL  
) engine = InnoDB;

CREATE TABLE SpotifyClone.follow(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    CONSTRAINT PRIMARY KEY (user_id, artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(50) NOT NULL,
    release_year YEAR NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.song(
    song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    song_name VARCHAR(50) NOT NULL,
    song_duration DOUBLE NOT NULL,
    artist_id INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.history(
    user_id INT NOT NULL,
    play_history INT NOT NULL,
    last_heard DATETIME NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id, play_history),
    FOREIGN KEY (play_history) REFERENCES song(song_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.plan (plan_type, plan_value)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99),
('pessoal', 6.99);

INSERT INTO SpotifyClone.user (user_name, user_age, plan_id, signature_date)
VALUES
('Barbara Liskov', 82, 1, '2019-10-20'),
('Robert Cecil Martin', 58, 1, '2017-01-06'),
('Ada Lovelace', 37, 2, '2017-12-30'),
('Martin Fowler', 46, 2, '2017-01-17'),
('Sandi Metz', 58, 2, '2018-04-29'),
('Paulo Freire', 19, 3, '2018-02-14'),
('Bell Hooks', 26, 3, '2018-01-05'),
('Christopher Alexander', 85, 4, '2019-06-05'),
('Judith Butler', 45, 4, '2020-05-13'),
('Jorge Amado', 58, 4, '2017-02-17');

INSERT INTO SpotifyClone.artist (artist_name)
VALUES
('Beyoncé'),
('Queen'),
('Elis Regina'),
('Baco Exu Do Blues'),
('Blind Guardian'),
('Nina Simone');

INSERT INTO SpotifyClone.follow (user_id, artist_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(4, 4),
(5, 5),
(5, 6),
(6, 6),
(6, 1),
(7, 6),
(9, 3),
(10, 2);

INSERT INTO SpotifyClone.album (album_name, release_year, artist_id)
VALUES
('Renaissance', 2022, 1),
('Jazz', 1978, 2),
('Hot Space', 1982, 2),
('Falso Brilhante', 1998, 3),
('Vento De Maio', 2001, 3),
('QVVJFA?', 2003, 4),
('Somewhere Far Beyond', 2007, 5),
('I Put A Spell On You', 2012, 6);

INSERT INTO SpotifyClone.song (song_name, song_duration, artist_id, album_id)
VALUES
('BREAK MY SOUL', 279, 1, 1),
("VIRGO'S GROOVE", 369, 1, 1),
('ALIEN SUPERSTAR', 116, 1, 1),
("Don't Stop Me Now", 203, 2, 2),
('Under Pressure', 152, 2, 3),
('Como Nossos Pais', 105, 3, 4),
('O Medo de Amar é o Medo de Ser Livre', 207, 3, 5),
('Samba em Paris', 267, 4, 6),
("The Bard's Song", 244, 5, 7),
('Feeling Good', 100, 6, 8);

INSERT INTO SpotifyClone.history (user_id, play_history, last_heard)
VALUES
(1, 8, '2022-02-28 10:45:55'),
(1, 2, '2020-05-02 05:30:35'),
(1, 10, '2020-03-06 11:22:33'),
(2, 10, '2022-08-05 08:05:17'),
(2, 7, '2020-01-02 07:40:33'),
(3, 10, '2020-11-13 16:55:13'),
(3, 2, '2020-12-05 18:38:30'),
(4, 8, '2021-08-15 17:10:10'),
(5, 8, '2022-01-09 01:44:33'), 
(5, 5, '2020-08-06 15:23:43'),
(6, 7, '2017-01-24 00:31:17'),
(6, 1, '2017-10-12 12:35:20'),
(7, 4, '2011-12-15 22:30:49'), 
(8, 4, '2012-03-17 14:56:41'), 
(9, 9, '2022-02-24 21:14:22'),
(10, 3, '2015-12-13 08:30:22');