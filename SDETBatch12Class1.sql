use syntaxhrm_mysql;
select * from person where id='106';
SELECT * FROM PERSON where ID='106';
select * from employee;
select * from hs_hr_employees;
 select * from ohrm_user;
 # Select statements -- can also be used for comments
 SELECT * FROM person;
 select * from employee; #brings all the data from the table employee
 select firstname from person; # brings the data for firstname column only
select firstname,lastname from person;
select empid, salary from employee;
select firstNAME ,lastname ,age,city from person;
select distinct firstname from person;
select distinct city from person;
select distinct age from person;
select distinct firstname,lastname from person;
select distinct firstname, lastname,age from person;
select * from person where age=23; # for numbers always use without '' or ""
select * from person where age='23'; # on mysql it works but not recommanded you might alos get syntax error on other database
select * from person where age="23";
select * from person where gender='f'; # for String type data always ''
select * from person where gender='F';
select * from person where gender="F";
select * from person where gender='f';
#select * from person where gender=f;
select * from person where city='new york';

select * from person where age>23;
select * from person where age>=23;
select * from person where age!=23; 
select * from person where age<>23; # same as != just different syntax!!!!

select * from person where age=23 or age=20; # || in java ,or  is in sql
select * from person where age=23 and city='new york';
select * from person where age>23 and gender='M';
select * from hs_hr_employees where emp_firstname='coco';
select * from person where city=null;# = does not work with the null values
select * from person where city is null;
select * from person where city is not null;
select * from person where city = ''; # empty and null are diferent things
select * from person where city ='0';
select * from person where dob='1990-02-26';

select * from person where dob>'2000-00-00';
select * from person where not dob>'2000-00-00';
select * from person where not age=23;
select * from person where age=23 or age= 25 or age= 28;

select * from person where age in (20,23,25,28);
select * from person where age not in (20,23,25,28);
select * from person where age>=20 and age<=28; # widely used
select * from person where age between 20 and 28; # not that common

select * from person where empid in (100,120,130);

select * from person where city in ('london','new york','sydney');

select * from person order by age; # will come in order 
select * from person order by age desc; #  in order backwords

select * from person order by age, empid;
select * from person order by age desc, empid;
select * from person order by age asc, empid; # by defolt is alredy asending, but sometimes we mide have to write it

select * from person where age=23 order by empid;
select * from person where firstname like 'a%';
select * from person where firstname like 'al%'; # startsWith()
select * from person where firstname like '%c'; # endsWith()
select * from person where firstname like '%a%'; # contains() # % is wild card to search things
select * from person where firstname like '__r_';
select * from person where firstname like 's_r_';

select * from person order by id;















