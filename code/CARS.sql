SELECT * FROM cars.car_dekho;
use cars;
-- Reading the data--
select*from car_dekho;
-- getting total count --
select count(*) from car_dekho;
-- number of available cars in 2023 --
select count(*) from car_dekho where year = 2023;
-- number of cars which will be available in 2020,2021,2022 --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- number of diesel cars in 2020 --
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";
-- number of petrol cars in 2020 --
select count(*) from car_dekho where year = 2020 and fuel = "Petrol";
-- count all petrol,diesel and cng cars by  all years --
select year, count(*) from car_dekho where fuel="Petrol" group by year;
select year, count(*) from car_dekho where fuel="Diesel" group by year;
select year, count(*) from car_dekho where fuel="CNG" group by year;

-- Find out the year where there were more than 100 cars --
select year, count(*) from car_dekho  group by year having count(*)> 100;

-- Display all cars' details between 2015 and 2023 --
select*from car_dekho where year between 2015 and 2023;

