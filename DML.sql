-- Exploratory Data Analysis (EDA)
Select Count (*) 
from HouseDATA
Select min(price)  
from HouseDATA
Select max(price)  
from HouseDATA
Select Round(AVG(price):: numeric, 1) AS avg_price
from HouseDATA

----List all houses with 3 bedrooms and sort them by price in descending order.

select * from HouseDATA
where bedrooms = 3
order by price DESC

-- Identify the average price per bedroom (grouped by the number of bedrooms).
select round(avg(price) :: Decimal , 1 ) , bedrooms from HouseDATA
group by bedrooms

-- Use the HAVING clause to filter and display the number of bedrooms where the average price is above $500,000.

select round(avg(price) :: Decimal , 1 ) AS AVG_price
, bedrooms from HouseDATA
group by bedrooms
having avg(price) >= 500000

----Find the average price of houses for each year (extract the year from the date column).

select round(avg(price) :: Decimal , 1) , extract(year from Date) as year
from housedata
group by extract (year from date)

-- Identify the most expensive zip code by calculating the average price of houses in each zip code.
select avg(price) , zipcode  from houseData 
group by zipcode
order by avg(price) DESC
--Determine the price per square foot for each house, and list the top 10 most expensive houses (by price per square foot).
select price/sqft_living AS price_perFt
from housedata 
order by price_perft DESC 
limit 10

--------------------------------------------------------------------------------Business Quetions----------------General Market Analysis -----------------------------------------------------------
-- What is the average house price across all areas?
select Distinct 
avg(price) as AVG_AREA , zipcode from housedata
group by zipcode
order by avg(price)

-------Which zip codes have the highest and lowest average house prices?-----

select Distinct 
avg(price) as AVG_AREA , zipcode from housedata
group by zipcode
order by avg(price)
limit 1 

-- Highest
select Distinct 
avg(price) as AVG_AREA , zipcode from housedata
group by zipcode
order by avg(price) DESC
limit 1 

--How do house prices vary by condition and view?
select avg(Price)  , condition , view
from housedata
Group by condition , view
order by avg(price)

--------Are waterfront properties significantly more expensive than non-waterfront properties?-------

select round(avg(price) :: Decimal , 1) , waterfront from houseData
group by waterfront

--------What are the most common price ranges for houses?
select min(price) from housedata
select max(price) from housedata
---So it 1.5M and 75k

----------------------------------------------------------------------------------------------------------------------------Trend Analysis----------------------------------------------------------------------
---------Are house prices increasing or decreasing over the years?
select extract(year from date)AS yearly , avg(price)
from housedata
Group by  extract(year from date)

-----Which zip codes show consistent growth in house prices over time?

select extract(year from date)AS yearly , avg(price) , zipcode 
from housedata
Group by  extract(year from date) , zipcode


--------------How does the price of houses vary based on the number of bedrooms and bathrooms?-----
select avg(price) , bedrooms , bathrooms from Housedata
group by bedrooms , bathrooms
order by avg(price) DESC


-----------Are houses with more floors priced higher on average?--------
select avg(price) , floors from housedata
group by floors
