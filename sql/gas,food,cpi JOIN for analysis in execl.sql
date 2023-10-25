select c.a_observation_date as Date , i.a_gas , i.a_eggs , i.a_ground_chuck , i.a_milk , c.a_rate
from impact as i
JOIN cpi_rate as c
ON i.a_month = c.a_observation_date
   
   
 
