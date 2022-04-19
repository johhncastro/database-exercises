select * from albums;

UPDATE albums set sales = sales * 10;

select name as "all albums relesed before 1980"
from albums where release_date < 1980;

update albums set  release_date = albums.release_date <1980;

select name as "all albums relesed by micheal jackson"
from albums where artist = 'michael jackson';

update albums set artist = 'michael jackson',artist = 'peter jackson' where artist= 'michael jackson'


