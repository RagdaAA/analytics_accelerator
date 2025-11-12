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
  -- LIKE, NOT, IN
SELECT name, website, primary_poc
FROM accounts
WHERE name = 'Exxon Mobil company';

-- Arithmetic Operations

