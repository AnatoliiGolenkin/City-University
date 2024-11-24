USE restaurant_database;
-- 1
SELECT sum(bill_total) AS income FROM restBill;
-- 2
SELECT sum(bill_total) AS feb_income FROM restBill where bill_date > 160200 and bill_date< 160230;
-- 3
SELECT AVG(bill_total) FROM restBill where table_no=2;
-- 4
SELECT MIN(no_of_seats) AS Min, MAX(no_of_seats) AS Max, AVG(no_of_seats) AS Avg from restRest_table where room_name = 'Blue';
-- 5
SELECT COUNT(*) from restBill where waiter_no = 004 or waiter_no = 002; 
