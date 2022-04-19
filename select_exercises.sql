use codeup_test_db;

select name as "The name of all albums by Pink Floyd."
from albums where artist = 'pink floyd';

select release_date as "The year Sgt. Pepper's Lonely Hearts Club Band was released"
from albums where name = 'sgt. peppers lonely hearts club band';

select genre as  "the genre for Nevermind"
from albums where name = 'nevermind';

SELECT name as "Which albums were released in the 1990s"
from albums WHERE release_date >1989 && albums.release_date < 2000;

select name as "Which albums had less than 20 million certified sales"
from albums where sales < 20000000;

select name as "all the albums with a genre of Rock"
from albums where genre = 'rock';

