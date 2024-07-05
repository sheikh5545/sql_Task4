select * from payroll

-- question 1 :get the sum of employee salary whose join in 2014 to 2024
-- solution
select sum(emp_salary) as sumofsalary from payroll 
where emp_joining_date between '2014-01-01' and '2024-12-31'

-- question 2 : get the sum,avg,max,min,count of emp_bonus where city is nagpur only
-- solution
select
sum(emp_bonus) as "sumofbonus",
avg(emp_bonus) as "avgofbonus",
max(emp_bonus) as "maxofbonus",
min(emp_bonus) as "minofbonus",
count(emp_bonus) as "countofbonus" from payroll
where emp_city = 'nagpur'

-- question 3 : get the avg of emp_expenses where emp_incentive is > 450
-- and emp-salary between 10500 to 14000 only
select 
avg(emp_expenses) as "avgofexpenses"
from payroll 
where emp_incentive > 450 or emp_salary between 10500 and 14000

-- question 4 : get the max value of salary without using max function
-- solution
select emp_salary from payroll order by emp_salary desc limit 1

-- quetion 5 : get the emp_add where city nagpur,hyderabad,saoner 
-- solution
select emp_add from payroll where emp_city in ('nagpur','hyderabad','saoner')

-- question 6 : get the status sum,avg of emp_incentive,emp_expenses where emp_mobile no is : 9365857498
-- solution
select sum(emp_incentive) as "sumofincentive",avg(emp_incentive) as "avgofincetive" from payroll
where emp_mobile_no = 9365857498

-- question 7 : get the count of city name where emp_city is hyderabad,nagpur and emp_bonus > 500
-- solution
select count(emp_city) as "countofcity" from payroll where emp_city in ('hyderabad','nagpur') 
	and emp_bonus > 500 

-- question 8 : get the sum of salary and sum of bonus  order by desc and asc
-- solve 
select sum(emp_salary) as "sumofsalary",sum(emp_bonus) as "sumofbonus" from payroll group by emp_salary,emp_bonus
 order by emp_salary desc, emp_bonus asc

-- question 9 : ge tsum of emp_expenses or emp_incentive  limit 15 
-- solution
select sum (emp_expenses) as "sumofexpenses",(emp_incentive) as "sumtofincentive"
from payroll group by emp_expenses,emp_incentive  limit 15

-- question 10 : get the avg of expenses where city is hyderabad and mobile no is 9632581470
	-- and exp is > 150
-- solve : 
select avg(emp_expenses) as "avgofexpenses" from payroll where emp_city like '%hyderabad%'and 
emp_mobile_no = '9632581470'