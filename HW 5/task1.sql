USE restaurant_database;
-- 1
SELECT bill_date, bill_total from restBill where cust_name = 'Bob Crow';
-- 2
SELECT cust_name from restBill where cust_name LIKE '%Smith%' group by cust_name;	
-- 3
SELECT first_name from restStaff where headwaiter IS NULL;
-- 4
SELECT * from restBill where bill_date >= 160200 and bill_date <= 160229;
-- 5
SELECT bill_date from restBill where bill_date >= 150000 and bill_date <=160000 group by bill_date;