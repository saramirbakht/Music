alter table tracks
add constraint tracks_milliseconds_check
check (milliseconds >= 0);




select artists.stage_name, albums.title, albums.release_date
from albums
join artists on albums.artist_id = artists.artist_id
order by albums.release_date desc
limit 10;




select albums.title, albums.release_date, albums.riaa_certificate
from albums
join artists on albums.artist_id = artists.artist_id
where artists.stage_name = 'Metallica'
order by albums.title;



select tracks.title, tracks.milliseconds
from tracks
join albums on tracks.album_id = albums.album_id
where albums.title = 'The White Album'
order by tracks.milliseconds;


select tracks.title, tracks.milliseconds
from tracks
join albums on tracks.album_id = albums.album_id
join artists on albums.artist_id = artists.artist_id
where artists.stage_name = 'The Beatles'
order by tracks.milliseconds;
select tracks.title as track,
       tracks.milliseconds as playing_time,
       genres.name as genre

from tracks
join albums on tracks.album_id = albums.album_id
join artists on albums.artist_id = artists.artist_id
join genres on tracks.genre_id = genres.genre_id
where artists.stage_name = 'The Beatles'
order by tracks.milliseconds;