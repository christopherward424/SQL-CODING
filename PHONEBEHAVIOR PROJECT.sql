Select *
FROM portfolio..phonebehavior


---MOST USED PHONE MODEL
select max(devicemodel) as most_used_device
from portfolio..phonebehavior
group by devicemodel
order by most_used_device desc



--- TOTAL NUMBER OF USERS BY DEVICE
select count(userid) number_of_users, devicemodel
from portfolio..phonebehavior
group by devicemodel
order by devicemodel desc





----MOST USED OPERATING SYSTEM
select count(operatingsystem) as number_of_users, operatingsystem
from portfolio..phonebehavior
group by operatingsystem
order by number_of_users desc


---TOTAL DATA AND APP USAGE BY GENDER
select gender, sum(datausage) as total_data_usage, sum(appusagetime) as total_app_usage
from portfolio..phonebehavior
group by gender
order by total_data_usage desc


-----AGE WITH MOST SCREENTIME
select sum(screentime) total_screen_time, age
from portfolio..phonebehavior 
group by age 
order by total_screen_time desc



----USERS WITH MOST INSTALLED APPS 
select userid, appsinstalled
from portfolio..phonebehavior
order by appsinstalled desc



