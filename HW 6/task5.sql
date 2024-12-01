 USE restaurant_database;
-- 1
SELECT first_name, surname, restBill.bill_date, count(*) from restStaff inner join restBill on restBill.waiter_no = restStaff.staff_no group by first_name, surname, restBill.bill_date having count(*) >=2;
-- 2
SELECT room_name, count(table_no) from restRest_table where no_of_seats >6 group by room_name;
-- 3
SELECT room_name, count(restBill.bill_no) from restRest_table inner join restBill on restBill.table_no=restRest_table.table_no group by room_name;
-- 5
SELECT cust_name from restBill group by cust_name having AVG(bill_total)>=400;
-- 6
SELECT first_name, surname,  count(*) from restStaff inner join restBill on restBill.waiter_no = restStaff.staff_no group by first_name, surname, restBill.bill_date having count(*) >=3;