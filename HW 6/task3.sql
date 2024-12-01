 USE restaurant_database;
 -- 1
 SELECT first_name from restStaff inner join restBill on restStaff.staff_no = restBill.waiter_no where restBill.cust_name = 'Tanya Singh';
 -- 2
 SELECT room_date from restRoom_management inner join restStaff on restStaff.staff_no = restRoom_management.headwaiter where restStaff.first_name = 'Charles' and restRoom_management.room_name = 'Green' and restRoom_management.room_date>160200 and restRoom_management.room_date<160300;
 -- 3
 SELECT first_name, surname from restStaff where headwaiter=005;
 -- 4 
 SELECT cust_name, bill_total, restStaff.first_name from restBill inner join restStaff on restBill.waiter_no = restStaff.staff_no order by restBill.bill_total DESC;
 -- 5
 