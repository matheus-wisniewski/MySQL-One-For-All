CREATE TABLE SpotifyClone.favorite_songs(
    song_id INT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (song_id) REFERENCES song (song_id),
    CONSTRAINT PRIMARY KEY (song_id, user_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.favorite_songs (user_id, song_id)
VALUES
  (1, 3),
  (1, 9),
  (1, 10),
  (2, 7),
  (3, 6),
  (3, 9),
  (4, 4),
  (4, 7),
  (5, 2),
  (5, 3),
  (8, 7),
  (9, 4),
  (10, 9);