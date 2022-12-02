-- Your code here
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS relationships;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS parties;

CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    department VARCHAR(40) NOT NULL,
    role VARCHAR(40) NOT NULL
);

CREATE TABLE relationships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee1 VARCHAR(40) NOT NULL,
    employee2 VARCHAR(40) NOT NULL
);

CREATE TABLE reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee VARCHAR(40) NOT NULL,
    score NUMERIC(3,1) NOT NULL
);

CREATE TABLE parties (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    budget NUMERIC(10,2) NOT NULL,
    onsite BOOLEAN NOT NULL DEFAULT 1
);

-- p1
INSERT INTO employees (first_name, last_name, department, role)
VALUES
("Michael", "Scott", "Management", "Regional Manager"),
-- p2
("Dwight", "Schrute", "Sales", "Assistant Regional Manager"),
-- p3
("Jim", "Halpert", "Sales", "Sales Representative"),
-- p4
("Pam", "Beesly", "Reception", "Receptionist"),
-- p5
("Kelly", "Kapoor", "Product Oversight", "Customer Service Representative"),
-- p6
("Angela", "Martin", "Accounting", "Head of Accounting"),
-- p7
("Roy", "Anderson", "Warehouse", "Warehouse Staff");

-- p8
INSERT INTO relationships (employee1, employee2)
VALUES
("Roy Anderson", "Pam Beesly");

-- p9
INSERT INTO employees (first_name, last_name, department, role)
VALUES
("Ryan", "Howard", "Reception", "Temp");

-- p10
INSERT INTO parties (budget, onsite)
VALUES
(100.00, 1);

-- p11
INSERT INTO reviews (employee, score)
VALUES
("Dwite Schrute", 3.3),
-- p12
("Jim Halpert", 4.2);
-- p13
UPDATE reviews SET score = 9.0 WHERE employee="Dwite Schrute";
-- p14
UPDATE reviews SET score = 9.3 WHERE employee="Jim Halpert";

-- p15
UPDATE employees SET role = "Assistant Regional Manager" WHERE first_name="Jim" AND last_name="Halpert";

-- p16
UPDATE employees SET department = 'Sales' WHERE first_name='Ryan' AND last_name='Howard';
UPDATE employees SET role = 'Sales Representative' WHERE first_name='Ryan' AND last_name='Howard';

-- p17
INSERT INTO parties (budget, onsite)
VALUES
  (200.00, 1);

-- p18
INSERT INTO relationships (employee1, employee2)
VALUES
  ('Angela Martin', 'Dwight Scrute');

-- p19
INSERT INTO reviews (employee, score)
VALUES
  ('Angela Martin', 6.2);

-- p20
INSERT INTO relationships (employee1, employee2)
VALUES
  ('Ryan Howard', 'Kelly Kapoor');

-- p21
INSERT INTO parties (budget, onsite)
VALUES
  (50.00, 1);

-- p22
DELETE FROM employees WHERE first_name='Jim' AND last_name='Halpert';
DELETE FROM relationships WHERE employee1='Jim Halpert' OR employee2='Jim Halpert';
DELETE FROM reviews WHERE employee='Jim Halpert';

-- p23
DELETE FROM relationships WHERE employee1= 'Roy Anderson' OR employee2='Roy Anderson';

-- p24
INSERT INTO reviews (employee, score)
VALUES
  ('Pam Beesly', 7.6);

-- p25
INSERT INTO reviews (employee, score)
VALUES
  ('Dwight Schrute', 8.7);

-- p26
DELETE FROM employees WHERE first_name='Ryan' AND last_name='Howard';
DELETE FROM relationships WHERE employee1='Ryan Howard' OR employee2='Ryan Howard';
DELETE FROM reviews WHERE employee='Ryan Howard';

-- p27
INSERT INTO employees (first_name, last_name, department, role)
VALUES
  ('Jim', 'Halpert', 'Sales', 'Sales Representative'),
-- p28
  ('Karen', 'Filippelli', 'Sales', 'Sales Representative');

-- p29
INSERT INTO relationships (employee1, employee2)
VALUES
  ('Jim Halpert', 'Karen Filippelli');

-- p30
INSERT INTO parties (budget, onsite)
VALUES
  (120.00, 1);

-- p31
DELETE FROM parties WHERE budget = 120.00;
INSERT INTO parties (budget, onsite)
VALUES
  (300.00, 0);

-- p32


-- p33
