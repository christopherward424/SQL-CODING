SELECT *
FROM portfolio..accidents20172023


---TOTAL STATE DEATHS 
select state, count(victims_condition) as total_deaths
FROM portfolio..accidents20172023
 Where victims_condition LIKE '%dead%'
 group by state
 order by total_deaths desc


---TOP 10 CITIES WITH MOST DEATHS BY STATE
select state, city, count(victims_condition) as total_deaths
from portfolio..accidents20172023
Where victims_condition LIKE '%dead%'
group by state, city
order by total_deaths desc



----- #1 CAUSE OF ACCIDENT IN EACH STATE and TOTAL
select state, max(cause_of_accident) as cause, count(cause_of_accident) as total
from portfolio..accidents20172023
group by state
order by total desc



--- #1  CAUSE OF ACCIDENT BY EACH STATE (TOP 10)
select state, max(cause_of_accident) as cause, count(victims_condition) as death_count
from portfolio..accidents20172023
where victims_condition LIKE '%dead%' 
group by state
order by death_count desc


---STATES HIGHEST NUMBER OF ACCIDENTS BY DAYS OF THE WEEK 
select state, week_day, count(cause_of_accident) as total_accidents
from portfolio..accidents20172023
where cause_of_accident is not null 
group by week_day, state
order by state, total_accidents desc



--- TOTAL ACCIDENTS FOR EACH STATE
select state, count(cause_of_accident) as total_accidents
from Portfolio..accidents20172023
group by state 
order by total_accidents desc


---CITY WITH MOST ACCIDENTS (TOP 10)
select city, count(cause_of_accident) as total_accidents
from portfolio..accidents20172023
group by city
order by total_accidents desc








