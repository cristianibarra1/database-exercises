show databases;
use albums_db;
show tables;
-- a. How many rows are in the albums table?
select * from albums; -- 31
-- b. How many unique artist names are in the albums table?
select * from albums as artist;
-- c. What is the primary key for the albums table?
-- select 
-- d. What is the oldest release date for any album in the albums table? What is the most recent release date?
-- oldest Sgt. Pepper's Lonely Hearts Club Band , newest 21

-- a. The name of all albums by Pink Floyd
-- The Dark Side of the Moon, The Wall
-- b. The year Sgt. Pepper's Lonely Hearts Club Band was released
-- 1967
-- c. The genre for the album Nevermind
-- Grunge, Alternative rock
-- d. Which albums were released in the 1990s
-- The Immaculate Collection
-- e. Which albums had less than 20 million certified sales
select * from albums where  sales <= 20; -- Grease: The Original Soundtrack from the Motion Picture,Bad,Sgt. Pepper's Lonely Hearts Club Band,Dirty Dancing,Let's Talk About Love,Dangerous
-- The Immaculate Collection, Abbey Road, Born in the U.S.A.,Brothers in Arms,Titanic: Music from the Motion Picture,Nevermind,The Wall
-- f. All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?