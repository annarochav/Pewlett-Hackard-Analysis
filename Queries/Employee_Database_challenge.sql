----------------------------------------------------------------------------------------------
--DELIVERABLE 1 
----------------------------------------------------------------------------------------------
--Retiring Employees by Title
SELECT e.emp_no,
	e.first_name, 
	e.last_name, 
	ti.title, 
	ti.from_date, 
	ti.to_date	
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--Preview output
SELECT * FROM retirement_titles	
----------------------------------------------------------------------------------------------
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

--Preview output
SELECT * FROM unique_titles
----------------------------------------------------------------------------------------------
-- Number of retirement-age employees by most recent job title
SELECT COUNT(u.title), u.title
INTO retiring_titles
FROM unique_titles as u
GROUP BY u.title
ORDER BY count DESC;

--Preview output
SELECT * FROM retiring_titles






