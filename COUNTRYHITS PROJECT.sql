Select *
from PORTFOLIO..countryhits

---MOST POPULAR TRACKS
select track, max(popularity) as popularity
from portfolio..countryhits
group by track
order by popularity desc


---MOST POPULAR TRACKS WITH FEATURE 
select track, artist1, artist2 , popularity
from portfolio..countryhits
where artist2 is not null
group by artist1, artist2, track, popularity
order by popularity desc



--- OLDEST ALBUM
select album, release
from portfolio..countryhitsP
group by album, release
order by release 





---ALBUM WITH LONGEST DURATION 
select max(album) as album, duration
from portfolio..countryhitsP
group by album, duration
order by duration desc



-- MOST POPULAR TRACK WITHOUT SECOND ARTIST
select track, artist1, artist2, max(popularity) as popularity 
from portfolio..countryhitsP
where artist2 is null
group by  track, artist1, artist2 
order by popularity desc


---MOST POPULAR ALBUM BETWEEN YEARS 2022 - 2024
select album, release, max(popularity) as popularity
from portfolio..countryhitsP
where release between '2022-02-11' AND '2024-04-19'
group by album, release
order by popularity desc








