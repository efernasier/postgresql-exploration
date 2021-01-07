-- Extract a DAY
SELECT EXTRACT (DAY FROM date '1992/11/13') AS DAY

-- Extract a MONTH
SELECT EXTRACT (MONTH FROM date '1992/11/13') AS MONTH

-- Extract a YEAR
SELECT EXTRACT (YEAR FROM date '1992/11/13') AS YEAR

-- Round a date 
SELECT DATE_TRUNC ('year', date '1992/11/13'); 

-- GET THE LOWER VALUE FROM A DATE 
SELECT DATE_TRUNC ('year', date '1992/11/13'); -- YEAR

-- GET THE LOWER VALUE FROM A MONTH  
SELECT DATE_TRUNC ('month', date '1992/11/13'); -- MONTH

-- Beginning of
SELECT DATE_TRUNC ('day', date '1992/11/13'); -- if it is a timestamp we can get a zero as value. 

-- Interval
-- Interval allow us to write queries in a way that mirrows language
-- 30 days before given date
SELECT *
FROM orders
WHERE purchaseDate <= now() - interval '30 days'

INTERVAL '1 year 2 months 3 days';
INTERVAL '2 weeks ago';
INTERVAL '1 year 3 hours 20 minutes';

-- Can we extract an interval ??
SELECT EXTRACT (
                  year
                  FROM 
                  INTERVAL '5 years 20 months');


