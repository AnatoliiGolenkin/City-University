USE restaurant_database;
-- 1
DROP VIEW IF EXISTS samsBills;
CREATE VIEW samsBills 
AS SELECT first_name, surname, restBill.bill_date, restBill.cust_name, restBill.bill_total from restStaff inner join restBill on restStaff.staff_no = restBill.waiter_no WHERE staff_no= 004;
SELECT * FROM samsBills;
-- 2
SELECT * FROM samsBills WHERE bill_total >= 400;
-- 3
DROP VIEW IF EXISTS roomTotals;
CREATE VIEW roomTotals
AS SELECT room_name, SUM(restBill.bill_total) AS total_sum FROM restRest_table inner join restBill on restRest_table.table_no = restBill.table_no GROUP BY room_name;
SELECT * FROM roomTotals;
-- 4
DROP VIEW IF EXISTS teamTotals;
CREATE VIEW teamTotals
AS SELECT CONCAT(restStaff.first_name,' ',restStaff.surname) AS headwaiter , SUM(bill_total) AS total_sum FROM restBill inner join restRest_table on restRest_table.table_no = restBill.table_no inner join restRoom_management on restRest_table.room_name = restRoom_management.room_name inner join restStaff on restRoom_management.headwaiter = restStaff.staff_no GROUP BY CONCAT(restStaff.first_name,' ',restStaff.surname);
SELECT * FROM teamTotals;