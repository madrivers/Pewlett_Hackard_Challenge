--Deliverable 1
Select e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
into retirement_challenge
From employees as e
Join titles as t
On (e.emp_no = t.emp_no)
Where (e.birth_date Between '1952-01-01' And '1955-12-31')


Select * from retirement_challenge

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
into retirement_challenge_dist
FROM retirement_challenge
ORDER BY emp_no, to_date DESC

select * from retirement_challenge_dist

Select count(title) as "title_count", title
into retiring_titles
from retirement_challenge_dist
Group By title
Order by title_count DESC

--Deliverable 2
Select Distinct On (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
Into mentorship_eligibility
From employees as e
Join dept_emp as de
On (e.emp_no = de.emp_no)
Join titles as t
On (e.emp_no = t.emp_no)
Where (de.to_date = '9999-01-01') AND
 (e.birth_date between '1965-01-01' and '1965-12-31')
 Order by e.emp_no



