use syntaxhrm_mysql;

select * from hs_hr_employees
where emp_birthday is not null and datediff(current_date(),emp_birthday)>7300
order by emp_birthday desc;

select current_date(),emp_birthday,datediff(current_date(),emp_birthday) Days
from hs_hr_employees where emp_birthday is not null;

select * from hs_hr_employees where emp_smoker=0;

select emp_birthday,year(emp_birthday) from hs_hr_employees
where emp_birthday is not null;

select * from hs_hr_employees where year(emp_birthday)!=1990;

select count(*) from hs_hr_employees where emp_smoker=0;
select count(*) from hs_hr_employees where emp_smoker='0';

select * from hs_hr_employees where emp_birthday is not null order by emp_birthday;
select * from hs_hr_employees where emp_birthday is not null order by emp_birthday desc;
# Break till 8:45

select * from hs_hr_employees where emp_birthday is not null order by emp_birthday desc, emp_firstname;
select * from hs_hr_employees where emp_birthday is not null and emp_marital_status='Married';
select * from hs_hr_employees where emp_birthday
is not null and emp_marital_status='Married' and emp_smoker=0 and nation_code=185;

select * from hs_hr_employees where emp_smoker=1 or emp_marital_status='single';
select * from hs_hr_employees where nation_code=20 or nation_code=197 or nation_code=4;
select * from hs_hr_employees where nation_code in(20,197,4);
select * from hs_hr_employees where emp_birthday>'1990-00-00' and emp_birthday<'2000-00-00';
select * from hs_hr_employees where emp_birthday>='1990-00-00' and emp_birthday<='2000-00-00';
select * from hs_hr_employees where emp_birthday between '1990-01-01' and'2000-01-01';
select * from hs_hr_employees where year(emp_birthday) between 1990 and 2000;

# fetch the results where employee id contains letter a
select * from hs_hr_employees where employee_id like '%a%';
select * from hs_hr_employees where employee_id like '%a';
select * from hs_hr_employees where emp_lastname like 'a%';
select * from hs_hr_employees where emp_lastname like 'a_';
select * from hs_hr_employees where emp_lastname like '__a%';
select * from ohrm_nationality;

select emp_number,emp_firstname,name from hs_hr_employees,ohrm_nationality
where nation_code is not null and nation_code=id;

select emp.emp_number,emp.emp_firstname,nc.name from hs_hr_employees emp
inner join ohrm_nationality nc on emp.nation_code=nc.id;

select e.emp_number,e.emp_firstname,n.name ,j.job_title from hs_hr_employees e,ohrm_nationality n,ohrm_job_title j
where e.nation_code is not null and e.nation_code=n.id and j.id=e.job_title_code;

select * from hs_hr_employees;
select * from ohrm_job_title;

