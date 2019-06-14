-- 1.
SELECT c.cc_id, c.[name], SUM(l.total_amount) - SUM(l.paid_amount) AS obligations, SUM(i.balance) AS goods
FROM INVESTMENT as i 
	JOIN CLIENT AS c ON c.cc_id = i.client_id
	JOIN LOAN as l ON c.cc_id = l.client_id
GROUP BY c.cc_id, c.[name];


-- 2.
SELECT b.id, b.city, b.country, COUNT(*) AS num_employees
FROM EMPLOYEE AS e
	JOIN BRANCH_BUILDING AS b ON e.branch_id = b.id
GROUP BY b.id, b.city, b.country;


-- 3
SELECT b.id, b.city, b.country, MIN(e.salary) AS minimum_wages, MAX(e.salary) AS maximum_wages
FROM EMPLOYEE AS e
	JOIN BRANCH_BUILDING AS b ON e.branch_id = b.id
GROUP BY b.id, b.city, b.country;


-- 4
SELECT account_id, COUNT(*) AS num_titulares
FROM ACCOUNT_HOLDER
GROUP BY account_id;


-- 5
SELECT b.city, b.country
FROM BRANCH_BUILDING AS b
GROUP BY b.city, b.country;

-- 6
SELECT b.id, b.city, b.country, COUNT(*) AS num_clients
FROM CLIENT AS c
	JOIN EMPLOYEE AS e ON e.employee_num = c.manager_id
	JOIN BRANCH_BUILDING AS b ON e.branch_id = b.id
GROUP BY b.id, b.city, b.country;

-- 7
SELECT b.id, b.city, b.country, SUM(e.salary) AS total_montly_salary_expenditure
FROM EMPLOYEE AS e
	JOIN BRANCH_BUILDING AS b ON e.branch_id = b.id
GROUP BY b.id, b.city, b.country;

-- 8
SELECT AVG(num_cards) AS average_card_num
FROM (  SELECT ah.client_id, COUNT(*) AS num_cards
		FROM [CARD] AS c
			JOIN ACCOUNT AS a ON c.account_id = a.id
			JOIN ACCOUNT_HOLDER AS ah ON a.id = ah.account_id
		GROUP BY ah.client_id) AS CARDS_PER_CLIENT;

-- 9
SELECT b.id, b.city, b.country, e.employee_num, e.email, COUNT(*) AS num_clients
FROM CLIENT AS c
	JOIN EMPLOYEE AS e ON e.employee_num = c.manager_id
	JOIN BRANCH_BUILDING AS b ON e.branch_id = b.id
GROUP BY b.id, b.city, b.country, e.employee_num, e.email;

-- 10
SELECT COUNT(client_id) AS num_active_loans 
FROM LOAN;

-- Extra: per branch
SELECT b.id, b.city, b.country, COUNT(client_id) AS num_active_loans 
FROM LOAN AS l
	JOIN CLIENT AS c ON c.cc_id = l.client_id
	JOIN EMPLOYEE AS e ON c.manager_id = e.employee_num
	JOIN BRANCH_BUILDING AS b ON e.branch_id = b.id
GROUP BY b.id, b.city, b.country;