-- Your code here
-- p1
INSERT INTO customers (name, phone)
VALUES
  ('Rachel', 1111111111);

-- p2

SELECT points FROM customers WHERE name= 'Rachel';

-- 5

UPDATE customers SET points = 6 WHERE name= 'Rachel';

INSERT INTO coffee_orders (is_redeemed)
VALUES
  (0);

-- p3

INSERT INTO customers (name, email, phone)
VALUES
  ('Monica', 'monica@friends.show', 2222222222),
  ('Pheobe', 'phoebe@friends.show', 3333333333);

-- p4

SELECT points FROM customers WHERE name= 'Pheobe';

-- 5

UPDATE customers SET points = 8 WHERE name= 'Pheobe';

INSERT INTO coffee_orders (is_redeemed)
VALUES
  (0),
  (0),
  (0);

-- p5

SELECT points FROM customers WHERE name= 'Rachel';
SELECT points FROM customers WHERE name= 'Monica';

-- 6
-- 5

UPDATE customers SET points = 10 WHERE name= 'Rachel';
UPDATE customers SET points = 9 WHERE name= 'Monica';

INSERT INTO coffee_orders (is_redeemed)
VALUES
  (0),
  (0),
  (0),
  (0),
  (0),
  (0),
  (0),
  (0);

-- p6
SELECT points FROM customers WHERE name= 'Monica';

-- p7
SELECT points FROM customers WHERE name= 'Rachel';

UPDATE customers SET points = 0 WHERE name= 'Rachel';

INSERT INTO coffee_orders (is_redeemed)
VALUES
  (1);

-- p8

INSERT INTO customers (name, email)
VALUES
  ('Joey', 'joey@friends.show'),
  ('Chandler', 'chandler@friends.show'),
  ('Ross', 'ross@friends.show');

-- p9

SELECT points FROM customers WHERE name= 'Ross';

-- 5

UPDATE customers SET points = 11 WHERE name= 'Ross';

INSERT INTO coffee_orders (is_redeemed)
VALUES
  (0),
  (0),
  (0),
  (0),
  (0),
  (0);

-- p10

SELECT points FROM customers WHERE name= "Monica";

-- 9

UPDATE customers SET points = 12 WHERE name= "Monica";

INSERT INTO coffee_orders (is_redeemed)
VALUES
    (0),
    (0),
    (0);

-- p11
SELECT points FROM customers WHERE name= "Pheobe";

UPDATE customers SET points = 9 WHERE name= "Pheobe";

INSERT INTO coffee_orders (is_redeemed)
VALUES
    (0);

-- p12

-- delete orders 19 and 20
DELETE FROM coffee_orders WHERE id= 19;
DELETE FROM coffee_orders WHERE id= 20;

UPDATE customers SET points = 9 WHERE name= "Ross";

-- p13
SELECT points FROM customers WHERE name= "Joey";

UPDATE customers SET points = 7 WHERE name= "Joey";

INSERT INTO coffee_orders (is_redeemed)
VALUES
    (0),
    (0);

-- p14
SELECT points FROM customers WHERE name= "Monica";

UPDATE customers SET points = 2 WHERE name= "Monica";

INSERT INTO coffee_orders (is_redeemed)
VALUES
    (1);

-- p15
DELETE FROM customers WHERE name= "Chandler";

-- p16
SELECT points FROM customers WHERE name= "Ross";

UPDATE customers SET points = 10 WHERE name= "Ross";

INSERT INTO coffee_orders (is_redeemed)
VALUES
    (0);

-- p17
SELECT points FROM customers WHERE name= "Joey";

UPDATE customers SET points = 8 WHERE name= "Joey";

INSERT INTO coffee_orders (is_redeemed)
VALUES
    (0);

-- p18
UPDATE customers SET email = "p_as_in_phoebe@friends.show" WHERE name= "Pheobe";
