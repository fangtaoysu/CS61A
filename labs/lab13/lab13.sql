.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students where color = "blue" and pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students where color = "blue" and pet = "dog";


CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students GROUP BY smallest having COUNT(*) = 1;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color
  FROM students AS a, students AS b 
  WHERE a.time < b.time AND a.pet = b.pet AND a.song = b.song;


CREATE TABLE sevens AS
  SELECT b.seven
  FROM numbers AS a, students AS b
  WHERE a."7" = "True" AND b.smallest <= 7 AND a.time = b.time;

