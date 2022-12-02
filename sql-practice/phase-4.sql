-- Your code here
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS relationships;
DROP TABLE IF EXISTS reviews;

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
UPDATE reviews SET score = 9.0 WHERE name="Dwite Schrute";
-- p14
UPDATE reviews SET score = 9.3 WHERE name="Jim Halpert";

-- p15
UPDATE employees SET role = "Assistant Regional Manager" WHERE first_name="Jim" AND last_name="Halpert";
