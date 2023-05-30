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
  (1, 6),
  (1, 10),
  (2, 4),
  (3, 1),
  (3, 3),
  (4, 7),
  (4, 4),
  (5, 10),
  (5, 2),
  (8, 4),
  (9, 7),
  (10, 3);