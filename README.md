# 🚀 Pewlett-Hackard-Analysis
Challenge Week7 Data Analysis BootCamp using PostgreSQL.

## ⚡Overview of the analysis: 

Assist Pewlett Hackard, a big company with lots of employees, to be prepare for the upcoming retirements also known as “Silver Tsunami” because of the huge number of vacancies that need to be filled soon. Pewlett Hackard wants to be prepared and need specific analysis, for example:

 + Total retiring employees.
 + Retiring employees per title.
 + Retiring employee with eligibility for the mentorship program.

<img src="https://github.com/annarochav/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png" width="370" height="" />

## ⚡Results: 

 + **Total retiring employees**

The first table contains the whole list of the retiring employees born between 1952-01-01 and 1955-12-31, it has the employer number, first name, last name, title and the respective job dates from start to end. The problem with this table is that some employees appear more than once because in all this time working for Pewlett-Hackard they got the opportunity to take different roles. The query returned 133,776 employees, but this is not correct, it needs more specifications. 

<img src="https://github.com/annarochav/Pewlett-Hackard-Analysis/blob/main/Resources/unfiltered_employees.png" width="500" height="" />

 + **Unique retiring employees results**

A DISTINCT ON function was applied to the previous table, so PostgreSQL returned us the unique employer IDs. Duplicates were removed by keeping only the most recent title of each employee filtering dates equal to 9999-01-01. The query returned 72,458 employees which is correct and Pewlett-Hackard must prepare. 

<img src="https://github.com/annarochav/Pewlett-Hackard-Analysis/blob/main/Resources/total_employees.png" width="380" height="" />

 + **Retiring employees per title**
 
Now that we have the total number of employees who are going to retire soon, we can group them by title and get an idea which strategies to consider. 36% Senior Engineers and 34% Senior Staff represent the 70% of the future vacancies and Pewlett-Hackard must start working on a plan.

<img src="https://github.com/annarochav/Pewlett-Hackard-Analysis/blob/main/Resources/per_title.png" width="200" height="" />

 + **Retiring employee with eligibility for the mentorship program**
 
This last table has the total number of employees with eligibility for the mentorship program. The date of birth considered was between 1965-01-01 and 1965-12-31 giving a total of 1,549 employees who only represent the 2.14% of the retiring total. 

<img src="https://github.com/annarochav/Pewlett-Hackard-Analysis/blob/main/Resources/mentoring_program.png" width="530" height="" />


## ⚡Summary: 

We can conclude that Pewlett-Hackard needs to take action with the retiring plan because the number of employees involved is huge and have very important roles like Senior Engineers. Good news are that now they have the data and the analysis to make the correct decisions. 

**How many roles will need to be filled as the "silver tsunami" begins to make an impact?**

72,458 roles will need to be filled soon but more analysis can be made if we change the date in the query, for example the next 3 years Pewlett-Hackard will need to fill 73,910 positions. These exercises should be done yearly because good planning is essential, and PH can avoid future problems in the company. 

<img src="https://github.com/annarochav/Pewlett-Hackard-Analysis/blob/main/Resources/next_tsunami.png" width="430" height="" />

**Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett-Hackard employees?**

If we only consider eligible employees born in 1965, the result is 1,549 which is very low if we compare it with the total amount retiring each year. PH must consider eligible employees born in 1964 and 1965 at least so the number can increase to 19,905 which is way better for the company.

<img src="https://github.com/annarochav/Pewlett-Hackard-Analysis/blob/main/Resources/next_mentorship.png" width="430" height="" />




