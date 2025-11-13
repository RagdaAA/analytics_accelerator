-- Order by section
SELECT id, occured_at, total_amt_usd
FROM table_
ORDER BY date_ ASC
LIMIT 10;

SELECT id, occured_at, total_amt_usd
FROM table_
ORDER BY total_amt_usd DESC
LIMIT 5;

SELECT id, occured_at, total_amt_usd
FROM table_
ORDER BY total_amt_usd ASC
LIMIT 20;

SELECT order_ID, account_ID, total_amt_usd
FROM orders
ORDER BY account_ID ASC, total_amt_usd DESC;

SELECT order_ID, account_ID, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC, account_ID ASC;

--WHERE section
SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
LIMIT 5;

SELECT *
FROM orders
WHERE totsl_amt_usd < 500
LIMIT 10;

--WHERE (operators) section
SELECT name, website, primary_poc
FROM accounts
WHERE name = 'Exxon Mobil company';

-- Arithmetic Operations
SELECT id, account_id, standrad_amt_usd/standard_qty AS unit_price
FROM orders
LIMIT 10;

-- Logical operators (LIKE, NOT, IN, BETWEEN, )
SELECT name
FROM account
WHERE company LIKE 'C%';

SELECT name
FROM account
WHERE company LIKE '%one%';

SELECT name
FROM account
WHERE company LIKE '%s';

SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom');

SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords');

SELECT account_name, primary_poc, sales_rep_id
FROM account
WHERE NOT IN ('Walmart', 'Target', 'Nordstrom');

SELECT *
FROM web_events
WHERE channel NOT IN ('organic', 'adwords');

SELECT name
FROM account
WHERE company NOT LIKE 'C%';

SELECT name
FROM account
WHERE company NOT LIKE '%one%';

SELECT name
FROM account
WHERE company NOT LIKE '%s';

SELECT *
FROM orders
WHERE standrad_qty > 1000 AND poster_qty = 0 AND glostt_qty = 0;

SELECT name
FROM account
WHERE name NOT LIKE 'C%' AND name LIKE '%s';

SELECT occurred_at, gloss_qty
FROM orders
WHERE gloss_qty BETWEEN 24 AND 29;

SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords') AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01'
ORDER BY DESC;

SELECT id
FROM orders
WHERE gloss_qty >4000 OR poster_qty >4000;

SELECT *
FROM orders
WHERE standrard_qty = 0 AND ( gloss_qty >1000 OR poster_qty >1000);

SELECT *
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%') 
              AND ((primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
              AND primary_poc NOT LIKE '%eana%');

-- Subqueries



























