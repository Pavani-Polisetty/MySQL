create database lms;
use lms;

# Memebers table
create table LMS_MEMBERS(
    MEMBER_ID varchar(10) primary key,
    MEMBER_NAME varchar(30),
    CITY varchar(20),
    DATE_REGISTER date,
    DATE_EXPIRE date,
    MEMBERSHIP_STATUS varchar(15));
    
    
# Suppliers table
create table LMS_SUPPLIERS_DETAILS (
    SUPPLIER_ID varchar(3) primary key,
    SUPPLIER_NAME varchar(30),
    ADDRESS varchar(50),
    CONTACT BIGINT,
    EMAIL varchar(100)); 


# Fine details table
create table  LMS_FINE_DETAILS (
    FINE_RANGE varchar(3) primary key,
    FINE_AMOUNT decimal(8,2)
);


# Book details table
create table LMS_BOOK_DETAILS (
    BOOK_CODE varchar(10) primary key,
    BOOK_TITLE varchar(50),
    CATEGORY varchar(15),
    AUTHOR varchar(30),
    PUBLICATION varchar(30),
    PUBLISH_DATE date,
    BOOK_EDITION int,
    PRICE decimal(8,2),
    RACK_NUM varchar(3),
    DATE_ARRIVAL date,
    SUPPLIER_ID varchar(3),
    foreign key (SUPPLIER_ID)
       references LMS_SUPPLIERS_DETAILS(SUPPLIER_ID)
);


# Book issue table
create table LMS_BOOK_ISSUE (
    BOOK_ISSUE_NO int primary key,
    MEMBER_ID varchar(10),
    BOOK_CODE varchar(10),
    DATE_ISSUE date,
    DATE_RETURN date,
    DATE_RETURNED date,
    BOOK_ISSUE_STATUS varchar(20),
    FINE_RANGE varchar(3),
    foreign key (MEMBER_ID)
        references LMS_MEMBERS(MEMBER_ID),
    foreign key (BOOK_CODE)
        references LMS_BOOK_DETAILS(BOOK_CODE),
    foreign key (FINE_RANGE)
        references LMS_FINE_DETAILS(FINE_RANGE)
);


INSERT INTO LMS_MEMBERS VALUES
('M001','Ravi Kumar','Hyderabad','2011-01-10','2012-12-31','Permanent'),
('M002','Sita Devi','Vijayawada','2011-02-15','2013-02-28','Temporary'),
('M003','Arjun Rao','Eluru','2011-03-01','2012-08-31','Permanent'),
('M004','Priya Sharma','Chennai','2012-01-10','2014-12-31','Temporary'),
('M005','Kiran Kumar','Bengaluru','2011-05-05','2012-11-30','Permanent'),
('M006','Lakshmi Devi','Guntur','2012-02-12','2015-06-30','Temporary'),
('M007','Rahul Verma','Delhi','2011-06-01','2013-03-31','Permanent'),
('M008','Anusha Reddy','Nellore','2012-04-15','2014-04-30','Temporary'),
('M009','Vamsi Krishna','Ongole','2011-08-10','2012-10-31','Permanent'),
('M010','Sneha Patel','Mumbai','2012-05-20','2015-12-31','Temporary'),
('M011','Pavan Kumar','Kakinada','2011-09-01','2012-09-30','Permanent'),
('M012','Divya Sri','Tirupati','2012-02-15','2016-06-30','Temporary'),
('M013','Suresh Babu','Warangal','2011-11-01','2013-01-31','Permanent'),
('M014','Meena Kumari','Rajahmundry','2012-06-10','2014-06-30','Temporary'),
('M015','Sai Charan','Bhimavaram','2011-12-01','2012-07-31','Permanent'),
('M016','Pooja Singh','Pune','2012-02-20','2013-03-15','Temporary'),
('M017','Naveen Reddy','Kadapa','2011-07-01','2012-06-30','Permanent'),
('M018','Harika Rao','Vizag','2012-03-15','2015-03-31','Temporary'),
('M019','Manoj Kumar','Kurnool','2011-10-01','2013-02-15','Permanent'),
('M020','Keerthi Reddy','Eluru','2012-02-25','2012-12-31','Temporary');

select * from LMS_MEMBERS;


INSERT INTO LMS_SUPPLIERS_DETAILS VALUES
('S01','Prentice Hall','New Delhi',9876500001,'s01@gmail.com'),
('S02','Pearson','Hyderabad',9876500002,'s02@gmail.com'),
('S03','McGraw Hill','Chennai',9876500003,'s03@gmail.com'),
('S04','Wiley','Mumbai',9876500004,'s04@gmail.com'),
('S05','Oxford Press','Bengaluru',9876500005,'s05@gmail.com'),
('S06','Tata McGraw','Vijayawada',9876500006,'s06@gmail.com'),
('S07','S Chand','Delhi',9876500007,'s07@gmail.com'),
('S08','Dreamtech','Pune',9876500008,'s08@gmail.com'),
('S09','PHI Learning','Kolkata',9876500009,'s09@gmail.com'),
('S10','BPB Publications','Hyderabad',9876500010,'s10@gmail.com'),
('S11','Tech Books','Eluru',9876500011,'s11@gmail.com'),
('S12','Global Books','Guntur',9876500012,'s12@gmail.com'),
('S13','National Publishers','Chennai',9876500013,'s13@gmail.com'),
('S14','Classic Books','Mumbai',9876500014,'s14@gmail.com'),
('S15','Bright Publications','Pune',9876500015,'s15@gmail.com'),
('S16','Modern Books','Delhi',9876500016,'s16@gmail.com'),
('S17','Knowledge Publishers','Vizag',9876500017,'s17@gmail.com'),
('S18','Universal Books','Nellore',9876500018,'s18@gmail.com'),
('S19','Star Publishers','Kurnool',9876500019,'s19@gmail.com'),
('S20','City Publications','Eluru',9876500020,'s20@gmail.com');

select * from LMS_SUPPLIERS_DETAILS;


INSERT INTO LMS_FINE_DETAILS VALUES
('F01',0.00),
('F02',5.00),
('F03',10.00),
('F04',15.00),
('F05',20.00),
('F06',25.00),
('F07',30.00),
('F08',35.00),
('F09',40.00),
('F10',45.00),
('F11',50.00),
('F12',55.00),
('F13',60.00),
('F14',65.00),
('F15',70.00),
('F16',75.00),
('F17',80.00),
('F18',85.00),
('F19',90.00),
('F20',100.00);

select * from LMS_FINE_DETAILS;



INSERT INTO LMS_BOOK_DETAILS VALUES
('BL000001','Database Management Systems','Education','Rajiv Chopra','Prentice Hall','2011-01-10',3,550.00,'R01','2012-01-10','S01'),
('BL000002','Java Programming','Java','Amit Kumar','Prentice Hall','2011-02-15',2,450.00,'R02','2012-01-15','S01'),
('BL000003','Core Java','Java','Sandeep Kumar','Pearson','2011-03-20',5,600.00,'R03','2012-02-01','S02'),
('BL000004','Advanced Java','Java','Praveen Kumar','Prentice Hall','2011-04-10',2,650.00,'R04','2012-02-10','S01'),
('BL000005','Python Programming','Programming','Rahul Sharma','Wiley','2011-05-12',3,500.00,'R05','2012-03-05','S04'),
('BL000006','C Programming','Programming','Vijay Kumar','Prentice Hall','2011-06-18',4,400.00,'R06','2012-03-12','S01'),
('BL000007','Computer Networks','Education','Anil Kumar','Pearson','2011-07-20',5,600.00,'R07','2012-04-01','S02'),
('BL000008','Operating Systems','Education','Ramesh Babu','McGraw Hill','2011-08-25',4,650.00,'R08','2012-04-15','S03'),
('BL000009','Data Structures','Programming','Kiran Reddy','Prentice Hall','2011-09-15',3,580.00,'R09','2012-05-10','S01'),
('BL000010','Web Development','Technology','Pavan Kumar','Pearson','2011-10-10',2,500.00,'R10','2012-05-20','S02'),
('BL000011','Java Fundamentals','Java','Arun Kumar','Prentice Hall','2011-11-05',6,700.00,'R11','2012-06-01','S01'),
('BL000012','Software Engineering','Education','Srinivas Rao','McGraw Hill','2011-12-01',7,720.00,'R12','2012-06-15','S03'),
('BL000013','Machine Learning','Technology','Priya Sharma','Wiley','2012-01-15',2,750.00,'R13','2012-07-01','S04'),
('BL000014','Computer Architecture','Education','Ravi Shankar','Prentice Hall','2012-02-20',4,680.00,'R14','2012-07-10','S01'),
('BL000015','Cloud Computing','Technology','Sai Krishna','Pearson','2012-03-25',3,620.00,'R15','2012-08-01','S02'),
('BL000016','Java Complete Reference','Java','Venkat Subramaniam','Prentice Hall','2012-04-12',8,800.00,'R16','2012-08-15','S01'),
('BL000017','Cyber Security','Technology','Pradeep Kumar','Wiley','2012-05-18',2,690.00,'R17','2012-09-01','S04'),
('BL000018','Algorithms','Education','Deepak Gupta','Prentice Hall','2012-06-22',4,900.00,'R18','2012-09-10','S01'),
('BL000019','SQL Fundamentals','Programming','Manoj Kumar','Pearson','2012-07-28',3,350.00,'R19','2012-10-01','S02'),
('BL000020','Internet of Things','Technology','Harish Rao','McGraw Hill','2012-08-30',2,590.00,'R20','2012-10-15','S03');


drop table LMS_BOOK_DETAILS;

select * from LMS_BOOK_DETAILS;


INSERT INTO LMS_BOOK_ISSUE VALUES
(1,'M001','BL000001','2012-03-20','2012-04-03','2012-04-02','Y','F01'),
(2,'M002','BL000002','2012-04-01','2012-04-15',NULL,'N','F01'),
(3,'M003','BL000003','2012-04-01','2012-04-15','2012-04-12','Y','F01'),
(4,'M004','BL000004','2012-04-01','2012-04-15',NULL,'N','F02'),
(5,'M005','BL000005','2012-04-05','2012-04-19','2012-04-18','Y','F01'),
(6,'M006','BL000006','2012-04-10','2012-04-24',NULL,'N','F01'),
(7,'M007','BL000007','2012-04-12','2012-04-26','2012-04-25','Y','F01'),
(8,'M008','BL000008','2012-04-15','2012-04-29',NULL,'N','F03'),
(9,'M009','BL000009','2012-04-20','2012-05-04','2012-05-02','Y','F01'),
(10,'M010','BL000010','2012-04-25','2012-05-09',NULL,'N','F01'),
(11,'M011','BL000011','2012-05-01','2012-05-15','2012-05-14','Y','F01'),
(12,'M012','BL000012','2012-05-05','2012-05-19',NULL,'N','F02'),
(13,'M013','BL000013','2012-05-10','2012-05-24','2012-05-22','Y','F01'),
(14,'M014','BL000014','2012-05-15','2012-05-29',NULL,'N','F01'),
(15,'M015','BL000015','2012-05-20','2012-06-03','2012-06-01','Y','F01'),
(16,'M016','BL000016','2012-05-25','2012-06-08',NULL,'N','F03'),
(17,'M017','BL000017','2012-06-01','2012-06-15','2012-06-14','Y','F01'),
(18,'M018','BL000018','2012-06-05','2012-06-19',NULL,'N','F01'),
(19,'M019','BL000019','2012-06-10','2012-06-24','2012-06-23','Y','F01'),
(20,'M020','BL000020','2012-06-15','2012-06-29',NULL,'N','F01');


drop table LMS_BOOK_ISSUE;
select * from LMS_BOOK_ISSUE;

#QUERYS
#1 Write a query to display the member id, member name, city and membership status who are all having life time membership. Hint: Life time membership status is “Permanent”.

select MEMBER_ID, MEMBER_NAME, CITY, MEMBERSHIP_STATUS
from LMS_MEMBERS
where MEMBERSHIP_STATUS = 'Permanent';

#2 Write a query to display the member id, member name who have not returned the books. Hint: Book return status is book_issue_status =’Y’ or ‘N’.
select M.MEMBER_ID, M.MEMBER_NAME
from LMS_MEMBERS M
left join LMS_BOOK_ISSUE I on M.MEMBER_ID = I.MEMBER_ID
where BOOK_ISSUE_STATUS = 'N';

#3 Write a query to display the member id, member name who have taken the book with book code ‘BL000002’.
select M.MEMBER_ID, M.MEMBER_NAME
from  LMS_MEMBERS M
left join LMS_BOOK_ISSUE I on  M.MEMBER_ID = I.MEMBER_ID
where BOOK_CODE = 'BL000002';

#4 Write a query to display the book code, book title and author of the books whose author name begins with ‘P’
select BOOK_CODE,BOOK_TITLE,AUTHOR
from LMS_BOOK_DETAILS
where AUTHOR like 'p%';

#5 Write a query to display the total number of Java books available in library with alias name ‘NO_OF_BOOKS’.
select count(*) as NO_OF_BOOKS
from LMS_BOOK_DETAILS 
where CATEGORY = 'java';

#6 Write a query to list the category and number of books in each category with alias name ‘NO_OF_BOOKS’.
select CATEGORY,count(*) as NO_OF_BOOKS
from LMS_BOOK_DETAILS
group by CATEGORY;

#7 Write a query to display the number of books published by "Prentice Hall” with the alias name “NO_OF_BOOKS”
select count(*) as NO_OF_BOOKS
from LMS_BOOK_DETAILS
where PUBLICATION = 'Prentice Hall';

#8 Write a query to display the book code, book title of the books which are issued on the date “1st April 2012”.
select B.BOOK_CODE,B.BOOK_TITLE
from LMS_BOOK_DETAILS B
join LMS_BOOK_ISSUE I on B.BOOK_CODE = I.BOOK_CODE
where I.DATE_ISSUE = '2012-04-01';

#9 Write a query to display the member id, member name, date of registration, membership status of the members who registered before "March 2012" and membership status is "Temporary"
select MEMBER_ID,MEMBER_NAME,DATE_REGISTER,MEMBERSHIP_STATUS
from LMS_MEMBERS
where DATE_REGISTER <'2012-03-01' and MEMBERSHIP_STATUS = "Temporary";

#10 Write a query to display the member id, member name, date of registration and expiry date of the members whose membership expiry date is before APR 2013.
select MEMBER_ID, MEMBER_NAME, DATE_REGISTER, DATE_EXPIRE
from LMS_MEMBERS
where DATE_EXPIRE < '2013-04-01';
