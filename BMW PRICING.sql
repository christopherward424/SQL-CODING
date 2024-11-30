select *
from portfolio..bmwprice

---HIGHEST PRICED MODEL CAR
select car_type, paint_color, sum(price) as totalprice
from portfolio..bmwprice
group by car_type, price, paint_color
order by totalprice desc



---EARLIEST SOLD COLOR AND CAR TYPE 
select paint_color, car_type, sold_at
from portfolio..bmwprice
group by paint_color, car_type, sold_at
order by sold_at 


----HIGHEST ENGINE POWERED MODELS
select paint_color, car_type, engine_power
from portfolio..bmwprice
group by engine_power, car_type, paint_color
order by engine_power desc



----HIGHEST MILEAGE CARS
SELECT paint_color, car_type, mileage
from portfolio..bmwprice
group by paint_color, car_type, mileage
order by mileage desc


---HIGHEST PRICED CARS BY FUEL TYPE
select paint_color, car_type, fuel, price
from portfolio..bmwprice
group by fuel, car_type, price, paint_color
order by price desc





---NUMBER OF CARS REGISTERED BETWEEN 2010-2014
select car_type, registration_date
from portfolio..bmwprice
where registration_date between '2010-01-01' and '2014-01-01'
group by car_type, registration_date
order by registration_date 


