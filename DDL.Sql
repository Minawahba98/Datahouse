-- Create The table 
Create table HouseData (
id Serial Not null,
date Date Not null,
price float not null ,
bedrooms INT not null ,
bathrooms float NOt null,
sqft_living INT NOt null ,
sqft_lot int Not null,
floors float Not null ,
waterfront varchar(50) Not null ,
view varchar (50) Not null,
condition varchar(50) Not null ,
grade INT Not null ,
yr_built int Not null,
zipcode INT Not null,
lat Float Not null, 
long Float Not null
)

-- ALter Some DATA 
ALTER TABLE HouseData ALTER COLUMN id TYPE BIGINT;
