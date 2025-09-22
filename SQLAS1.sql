#creating new database
CREATE DATABASE ABCHOTELLIMITED;

#selecting the database to work in
use ABCHOTELLIMITED;

#creating tables
CREATE TABLE GUEST(
GUEST_ID INT(3) PRIMARY KEY,
GUEST_NAME VARCHAR(50),
MOBILE_NO VARCHAR(10),
EMAIL VARCHAR(50));

CREATE TABLE ROOMS(
ROOM_ID INT(10) PRIMARY KEY, 
ROOM_TYPE VARCHAR(50)
PRICE_PER_NIGHT INT(10)
OCCUPANCY TINYINT(1));

CREATE TABLE RESERVATION(
RESERVATION_ID INT(10) PRIMARY KEY,
GUEST_ID INT(10),
FOREIGN KEY(GUEST_ID) REFERENCES GUEST(GUEST_ID),
ROOM_ID INT(10),
FOREIGN KEY(ROOM_ID) REFERENCES ROOMS(ROOM_ID),
CHECK_IN_DATE DATE,
CHECK_OUT_DATE DATE,
TOTAL_AMOUNT DECIMAL(10,2),
BREAKFAST_INCLUSIVE TINYINT(1));

CREATE TABLE PAYMENT(
PAYMENT_ID INT(10),
RESERVATION_ID INT(10),
FOREIGN KEY(RESERVATION_ID) REFERENCES RESERVATION(RESERVATION_ID),
ROOM_AMOUNT DECIMAL(10,2),
DATE_OF_PAYMENT DATE,
MODE_OF_PAYMENT VARCHAR(50));


CREATE TABLE ROOMSERVICE(
SERVICE_ID INT(10),
RESERVATION_ID INT(10),
FOREIGN KEY(RESERVATION_ID) REFERENCES RESERVATION(RESERVATION_ID),
GUEST_ID INT(10),
FOREIGN KEY(GUEST_ID) REFERENCES GUEST(GUEST_ID),
SERVICE_TYPE VARCHAR(100),
SERVICE_AMOUNT DECIMAL(10,2));

CREATE TABLE STAFF(
STAFF_ID INT(10) PRIMARY KEY,
NAME VARCHAR(100),
ROLE VARCHAR(50),
CONTACT VARCHAR(50));

#INSERTING VALUES INTO COLUMNS
INSERT INTO GUEST (GUEST_ID, GUEST_NAME, MOBILE_NO, EMAIL) VALUES
(1, 'Amit Sharma', 9811111111, 'amit.sharma@email.com'),
(2, 'Priya Singh', 9822222222, 'priya.singh@email.com'),
(3, 'Rahul Verma', 9833333333, 'Rahul.verma@email.com'),
(4, 'Neha Gupta', 9844444444, 'neha.gupta@email.com'),
(5, 'Rohan Kumar', 9855555555, 'rohan.kumar@email.com'),
(6, 'Sonia Mehra', 9866666666, 'sonia.mehra@email.com'),
(7, 'Arjun Yadav', 9877777777, 'arjun.yadav@email.com'),
(8, 'Divya Patel', 9888888888, 'divya.patel@email.com'),
(9, 'Sandeep Joshi', 9899999999, 'sandeep.joshi@email.com'),
(10, 'Kavita Rao', 9900000000, 'kavita.rao@email.com'),
(11, 'Manish Jain', 9911111111, 'manish.jain@email.com'),
(12, 'Swati Bajaj', 9922222222, 'swati.bajaj@email.com'),
(13, 'Mohit Bansal', 9933333333, 'mohit.bansal@email.com'),
(14, 'Anjali Sharma', 9944444444, 'anjali.sharma@email.com'),
(15, 'Ritu Kapoor', 9955555555, 'ritu.kapoor@email.com'),
(16, 'Nikhil Aggarwal', 9966666666, 'nikhil.aggarwal@email.com'),
(17, 'Pooja Sethi', 9977777777, 'pooja.sethi@email.com'),
(18, 'Sameer Malhotra', 9988888888, 'sameer.malhotra@email.com'),
(19, 'Lakshmi Menon', 9999999999, 'lakshmi.menon@email.com'),
(20, 'Sunil Chauhan', 9000000000, 'sunil.chauhan@email.com');


INSERT INTO PAYMENT (PAYMENT_ID, RESERVATION_ID, ROOM_AMOUNT, DATE_OF_PAYMENT, MODE_OF_PAYMENT) VALUES
(1, 101, 1200.00, '2025-09-01', 'Credit Card'),
(2, 102, 1500.50, '2025-09-02', 'Cash'),
(3, 103, 900.75, '2025-09-03', 'Debit Card'),
(4, 104, 1800.00, '2025-09-04', 'UPI'),
(5, 105, 1000.25, '2025-09-05', 'Credit Card'),
(6, 106, 1300.00, '2025-09-06', 'Cash'),
(7, 107, 1700.00, '2025-09-07', 'Debit Card'),
(8, 108, 2000.00, '2025-09-08', 'UPI'),
(9, 109, 1100.00, '2025-09-09', 'Credit Card'),
(10, 110, 1400.00, '2025-09-10', 'Cash'),
(11, 111, 1600.00, '2025-09-11', 'Debit Card'),
(12, 112, 1750.00, '2025-09-12', 'UPI'),
(13, 113, 950.00, '2025-09-13', 'Credit Card'),
(14, 114, 1450.00, '2025-09-14', 'Cash'),
(15, 115, 1250.00, '2025-09-15', 'Debit Card'),
(16, 116, 1550.00, '2025-09-16', 'UPI'),
(17, 117, 1350.00, '2025-09-17', 'Credit Card'),
(18, 118, 800.00, '2025-09-18', 'Cash'),
(19, 119, 1150.00, '2025-09-19', 'Debit Card'),
(20, 120, 1650.00, '2025-09-20', 'UPI');


INSERT INTO ROOMS(ROOM_ID, ROOM_TYPE, PRICE_PER_NIGHT, OCCUPANCY) VALUES
(1, 'Single', 1000, 1),
(2, 'Double', 1500, 2),
(3, 'Suite', 3000, 4),
(4, 'Deluxe', 2500, 3),
(5, 'Single', 1100, 1),
(6, 'Double', 1600, 2),
(7, 'Suite', 3200, 4),
(8, 'Deluxe', 2700, 3),
(9, 'Single', 1200, 1),
(10, 'Double', 1700, 2),
(11, 'Suite', 3500, 4),
(12, 'Deluxe', 2800, 3),
(13, 'Single', 1300, 1),
(14, 'Double', 1800, 2),
(15, 'Suite', 3600, 4),
(16, 'Deluxe', 2900, 3),
(17, 'Single', 1400, 1),
(18, 'Double', 1900, 2),
(19, 'Suite', 3700, 4),
(20, 'Deluxe', 3000, 3);


INSERT INTO RESERVATION (RESERVATION_ID, GUEST_ID, ROOM_ID, CHECK_IN_DATE, CHECK_OUT_DATE, TOTAL_AMOUNT, BREAKFAST_INCLUSIVE) VALUES
(1, 1, 1, '2025-09-01', '2025-09-03', 2000.00, 1),
(2, 2, 2, '2025-09-02', '2025-09-04', 3000.00, 0),
(3, 3, 3, '2025-09-03', '2025-09-05', 4000.00, 1),
(4, 4, 4, '2025-09-04', '2025-09-06', 3500.00, 1),
(5, 5, 5, '2025-09-05', '2025-09-07', 2500.00, 0),
(6, 6, 6, '2025-09-06', '2025-09-08', 2200.00, 1),
(7, 7, 7, '2025-09-07', '2025-09-09', 2700.00, 0),
(8, 8, 8, '2025-09-08', '2025-09-10', 3200.00, 1),
(9, 9, 9, '2025-09-09', '2025-09-11', 2800.00, 0),
(10, 10, 10, '2025-09-10', '2025-09-12', 3300.00, 1),
(11, 11, 11, '2025-09-11', '2025-09-13', 2900.00, 1),
(12, 12, 12, '2025-09-12', '2025-09-14', 3100.00, 0),
(13, 13, 13, '2025-09-13', '2025-09-15', 3400.00, 1),
(14, 14, 14, '2025-09-14', '2025-09-16', 3600.00, 0),
(15, 15, 15, '2025-09-15', '2025-09-17', 3700.00, 1),
(16, 16, 16, '2025-09-16', '2025-09-18', 3500.00, 0),
(17, 17, 17, '2025-09-17', '2025-09-19', 2800.00, 1),
(18, 18, 18, '2025-09-18', '2025-09-20', 2600.00, 0),
(19, 19, 19, '2025-09-19', '2025-09-21', 3000.00, 1),
(20, 20, 20, '2025-09-20', '2025-09-22', 3100.00, 0);


INSERT INTO ROOMSERVICE(RESERVATION_ID, GUEST_ID, SERVICE_TYPE, SERVICE_AMOUNT) VALUES
(1, 1, 'Room Cleaning', 50.00),
(2, 2, 'Laundry', 30.00),
(3, 3, 'Breakfast', 100.00),
(4, 4, 'Spa', 200.00),
(5, 5, 'Airport Pickup', 150.00),
(6, 6, 'Room Cleaning', 50.00),
(7, 7, 'Laundry', 30.00),
(8, 8, 'Breakfast', 100.00),
(9, 9, 'Spa', 200.00),
(10, 10, 'Airport Pickup', 150.00),
(11, 11, 'Room Cleaning', 60.00),
(12, 12, 'Laundry', 35.00),
(13, 13, 'Breakfast', 110.00),
(14, 14, 'Spa', 210.00),
(15, 15, 'Airport Pickup', 170.00),
(16, 16, 'Room Cleaning', 55.00),
(17, 17, 'Laundry', 33.00),
(18, 18, 'Breakfast', 105.00),
(19, 19, 'Spa', 190.00),
(20, 20, 'Airport Pickup', 160.00);


INSERT INTO STAFF(NAME, ROLE, CONTACT) VALUES
('John Smith', 'Manager', '9876543210'),
('Alice Johnson', 'Receptionist', '9876543211'),
('Emma Williams', 'Housekeeping', '9876543212'),
('Michael Brown', 'Chef', '9876543213'),
('Olivia Jones', 'Waiter', '9876543214'),
('James Garcia', 'Security', '9876543215'),
('Sophia Martinez', 'Accountant', '9876543216'),
('David Lee', 'Maintenance', '9876543217'),
('Isabella Harris', 'Receptionist', '9876543218'),
('Daniel Clark', 'Chef', '9876543219'),
('Mia Rodriguez', 'Housekeeping', '9876543220'),
('Matthew Lewis', 'Manager', '9876543221'),
('Ava Walker', 'Waiter', '9876543222'),
('Ethan Hall', 'Security', '9876543223'),
('Charlotte Allen', 'Accountant', '9876543224'),
('Alexander Young', 'Maintenance', '9876543225'),
('Amelia King', 'Chef', '9876543226'),
('Benjamin Wright', 'Housekeeping', '9876543227'),
('Ella Scott', 'Receptionist', '9876543228'),
('William Green', 'Manager', '9876543229');

#QUERIES

#FINDING CURRENTLY OCCUPIED ROOMS
SELECT ROOMS.ROOM_ID, ROOMS.ROOM_TYPE
FROM rooms
JOIN reservation ON ROOMS.ROOM_ID = RESERVATION.ROOM_ID
WHERE CURDATE() BETWEEN CHECK_IN_DATE AND CHECK_OUT_DATE;

#FINDING THE SERVICE AVAILED BY GUEST_ID 1
SELECT SERVICE_TYPE, SERVICE_AMOUNT
FROM ROOMSERVICE
WHERE GUEST_ID = 1;

#FINDING TOTAL REVENUE EARNED THROUGH ROOM RESERVATIONS
SELECT SUM(ROOM_AMOUNT) AS TOTALREVENUE
FROM payment;

#GROUPING STAFF BY ROLES
SELECT ROLE, COUNT(STAFF_ID) AS STAFFCOUNT
FROM staff
GROUP BY ROLE;

#FINDING THE SERVICE THAT IS MOST AVAILED
SELECT SERVICE_TYPE, COUNT(SERVICE_ID) AS SERVICECOUNT, SUM(SERVICE_AMOUNT) AS TOTALEARNINGS
FROM ROOMSERVICE
GROUP BY SERVICE_TYPE
ORDER BY SERVICECOUNT DESC;



