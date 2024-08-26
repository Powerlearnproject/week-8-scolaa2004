-- Retrieve records with specific conditions:
-- For example, to get records with a specific payment method:
SELECT * FROM transactions
WHERE payment_method = 'Credit Card';

-- Retrieve all records:
SELECT * FROM apo_softwares_business_accounts;

-- To get records within a specific date range:
SELECT * FROM apo_softwares_business_accounts WHERE transaction_date BETWEEN '2024-01-01' AND '2024-12-31';

-- Retrieve records with a specific ID:
SELECT * FROM apo_softwares_business_accounts WHERE id = 5001;

-- Retrieve total profits and losses:
-- To get the sum of all profits:
SELECT SUM(total_profits) AS total_profits
FROM apo_softwares_business_accounts;

-- To get the sum of all losses:
SELECT SUM(total_loses) AS total_loses
FROM apo_softwares_business_accounts;


-- Retrieve the most recent transactions:
SELECT * FROM apo_softwares_business_accounts ORDER BY transaction_date DESC LIMIT 10;

-- Count the number of transactions:
SELECT COUNT(*) AS transaction_count FROM apo_softwares_business_accounts;

-- Retrieve transactions for a specific payment method and sort by date:
SELECT * FROM apo_softwares_business_accounts WHERE payment_method = 'Cash' ORDER BY transaction_date DESC;