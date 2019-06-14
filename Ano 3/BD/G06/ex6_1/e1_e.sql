-- e)
SELECT au_fname AS first_name,au_lname AS last_name,phone AS telephone FROM authors WHERE state='CA' AND au_lname != 'Ringer' ORDER BY au_fname,au_lname;