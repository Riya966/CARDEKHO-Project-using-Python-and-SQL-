create database cardekho;

use cardekho;

select name from sys.tables;

select *from Car_Km;
select *from car_price;

--Que 1. How many cars use automatics transmission?

select count(car_name) AS count_car_automatic
from Car_Km
where Transmission='automatic';

--Que 2. How many cars have a individual seller type?

select count(car_name) AS count_car_individual
from Car_Km
where seller_type='individual';

--Que 3. What is the highest selling price of a car ciaz?

select top 1 car_name,selling_price
from Car_price
where car_name='ciaz'
order by selling_price desc;

select  car_name,max(selling_price) as higest_selling_price
from Car_price
where car_name='ciaz'
group by Car_Name;

select car_name,selling_price from Car_price where car_name='ciaz' order by selling_price desc;

--Que 4. What is the lowest selling price of a car innova and ertiga?


select  car_name,min(selling_price) as lowest_selling_price
from Car_price
where car_name='innova' or Car_Name='ertiga'
group by Car_Name;

select  car_name,selling_price from Car_price where car_name='innova'  order by selling_price;
select  car_name,selling_price from Car_price where car_name='ertiga'  order by selling_price;

--Que 5. What is the average selling price of cars based on their model year?.

select year,avg(selling_price) as avg_selling_price
from Car_price
group by year;

--Que 6. What is the average selling price of cars based on fuel type and transmission type?

select ck.fuel_type, ck.Transmission,avg(cp.selling_price) as avg_selling_price
from Car_Km ck
join Car_price cp
on ck.Car_Name=cp.Car_Name and ck.Year=cp.Year
group by ck.Fuel_Type,ck.Transmission;

--Que 7. Which cars have the highest depreciation rate?

select car_name,max(((ori_price-selling_price)/Ori_Price)*100) as highest_depre_rate
from Car_price
group by Car_Name
order by highest_depre_rate desc;

--Que 8.How many cars use diesel fuel?

select count(Car_Name) as count_of_diesal_car
from Car_Km
where Fuel_Type='Diesel';

--Que 9.How many cars have a manual transmission?

select count(Car_Name) as count_of_manual_transmission
from Car_Km
where Transmission='Manual';

--Que 10.What is the highest selling price of a car swift?

select max(Selling_price) as highest_SP_Swift
from Car_price
where Car_Name='swift';

--Que 11.What is the lowest selling price of a car alto 800 and fortuner?

select Car_Name,min(Selling_price) as lowest_SP_alto800
from Car_price
where Car_Name in ('alto 800','fortuner')
group by Car_Name

--Que 12.What is the average selling price of cars based on their model year?

select year,avg(Selling_price) as avg_selling_price_modelyearwise
from Car_price
group by year;

--Que 13.What is the average depreciation percentage by car model year?

select year, round(avg(((Ori_Price-Selling_Price)/Ori_Price)*100),2) as avg_depreciation_percentage
from Car_price
group by year;

--Que 14.What is the relationship between the kilometers driven and the selling price?


select 
from Car_Km ck
join Car_price cp  on ck.Car_Name=cp.Car_Name and ck.Year=cp.Year

select *from Car_Km;
select *from car_price;