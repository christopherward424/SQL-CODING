select * 
from portfolio..medicalcost

---AGE WITH MOST CHARGES 
select age, sum(charges) as total_charges 
from Portfolio..medicalcost
group by age
order by total_charges


--- GENDER WITH MOST CHARGES 
select sex, sum(charges) as totalcharges 
from portfolio..medicalcost
group by sex
order by totalcharges desc


---REGION WITH MOST CHARGES
select region, sum(charges) as totalcharges 
from portfolio..medicalcost 
group by region
order by totalcharges desc


--NUMBER OF SMOKERS BY GENDER 
select sex, count(smoker) as total_smokers
from portfolio..medicalcost
group by sex
order by total_smokers desc

---PEOPLE WITHOUT CHILDREN BY REGION
select region, count(children) as no_children
from portfolio..medicalcost
where children <=0
group by region

---- AGE WITH HIGHEST BMI
select age, count(bmi) as totalbmi
from portfolio..medicalcost
where bmi >=30
group by age




