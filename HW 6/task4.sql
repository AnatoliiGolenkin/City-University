 USE restaurant_database;
 -- 1
SELECT cust_name FROM restBill where bill_total>450 and table_no in (select table_no from restRoom_management where headwaiter = 010);
 -- 2
 SELECT distinct first_name, surname FROM restStaff inner join restRoom_management on restStaff.staff_no = restRoom_management.headwaiter inner join restRest_table on restRest_table.room_name = restRoom_management.room_name where restRest_table.table_no in (SELECT table_no FROM restBill where cust_name = 'Nerida Smith' and bill_date = 160111);
 -- 3
 SELECT cust_name from restBill where bill_total = (SELECT min(bill_total) from restBill);
 -- 4
 SELECT first_name from restStaff where staff_no not in (select waiter_no from restBill);
 -- 5
 SELECT distinct cust_name, restStaff.first_name, restStaff.surname, restRoom_management.room_name from restBill inner join restRest_table on restBill.table_no=restRest_table.table_no inner join restRoom_management on restRest_table.room_name = restRoom_management.room_name inner join restStaff on restRoom_management.headwaiter = restStaff.staff_no where restBill.bill_total = (SELECT max(bill_total) from restBill); 