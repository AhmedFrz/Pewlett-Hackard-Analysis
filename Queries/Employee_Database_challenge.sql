# Deliverables 1 :  The Number of Retiring Employees by Title

select count(ri.emp_no), t.title
from retirement_info as ri
right join  titles as t
on t.emp_no = ri.emp_no
group by title;

--  Creating a 'Retirement Titles' table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955

select e.emp_no, e.first_name, e.last_name, 
	   t.title, t.from_date, t.to_date 
into retirement_titles 
from employees as e 
left join titles as t
where birth_date between '1952-01-01' and '1955-12-31'
order by emp_no

-- Because some employees may have multiple titles in the database—for example, due to promotions— 
-- therefore using  DISTINCT ON statement to create a "unique titles" table that contains the most recent title of each employee
-- Using Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
into unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

--  Using COUNT() function to create a table that has the number of retirement-age employees by most recent job title
-- And using DISTINCT to include only current employees in our analysis

select distinct count(title), title
into retiring_titles
from unique_titles
group by title
order by count(title) desc




# Deliverables 2 : The Employees Eligible for the Mentorship Program

--  Creating a "mentorship-eligibility" table that holds the current employees who were born between January 1, 1965 and December 31, 1965

select distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
		de.from_date, de.to_date,
		t.title
into mentorship_eligibility
from employees as e 
	inner join titles as t 
		on e.emp_no= t.emp_no
	inner join dept_emp as de 
		on e.emp_no= de.emp_no
where (de.to_date = '9999-01-01') 
and (e.birth_date  between  '1955-12-31' and '1965-01-01' )
;

-- NOTE: All Tables were saved and exported using point and click
