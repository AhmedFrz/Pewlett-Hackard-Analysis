# Pewlett-Hackard-Analysis

##Deliverable 3:

### The purpose of this analysis 
 
•	Manager wants to know the number of retiring employees, their title and department 
•	This will help the manger to know how many employees to hire and train
•	Since HP is a tech giant, it is essentual to forecast and manage the human resources
•	Also, this analysis will provide HR to make a strategy to timely manage the 
    o	large number of retiring employees, 
    o	to arrange a training or mentorship program for new employees, and 
    o	to get the experienced and qualified retiring employees back to the office as a part time       for training purposes
    

###	Summary

####	How many roles will need to be filled as the "silver tsunami" begins to make an impact?

--Total role which needs to be filled are 74,458 
--Query (select  distinct count(emp_no) from unique_titles)

#### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

--The total employees retiring with unique titles are 74,458 
--Query (select  distinct count(emp_no) from unique_titles)
  
--Total mentorship eligible employees are 166,214 
--Query: (select   count(emp_no) from mentorship_eligibility) 

Yes, there are enough qualified, retirement-ready employees in the departments to mentor the next generation of HP employees.


