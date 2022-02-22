--Create list of retiring employees with titles
SELECT e.emp_no, 
	e.first_name, 
	e.last_name, 
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e 
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

--Count retiring employees by department
SELECT COUNT (ut.title),ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title;

--List of retiring employees 
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

--Number of retiring employees by title
SELECT COUNT (ut.title),ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title;

-- List of employees eligible for mentorship
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
	INTO mentorship_eligibility
	FROM employees as e
	INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
	WHERE (de.to_date = '9999-01-01')
		AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	ORDER BY emp_no;
		
--Count of eligible retiring mentors
SELECT COUNT (me.title),me.title
INTO mentor_count
FROM mentorship_eligibility as me
GROUP BY me.title;

--Total count of retiring employees
SELECT COUNT (emp_no)
FROM unique_titles;		