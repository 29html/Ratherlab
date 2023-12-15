INSERT INTO currency (code, description) VALUES ('USD', 'United States Dollar');
INSERT INTO currency (code, description) VALUES ('EUR', 'Euro');
INSERT INTO currency (code, description) VALUES ('JPY', 'Japanese Yen');
INSERT INTO currency (code, description) VALUES ('GBP', 'British Pound');
INSERT INTO currency (code, description) VALUES ('AUD', 'Australian Dollar');
INSERT INTO currency (code, description) VALUES ('CAD', 'Canadian Dollar');
INSERT INTO currency (code, description) VALUES ('CHF', 'Swiss Franc');
INSERT INTO currency (code, description) VALUES ('CNY', 'Chinese Yuan');
INSERT INTO currency (code, description) VALUES ('SEK', 'Swedish Krona');
INSERT INTO currency (code, description) VALUES ('NZD', 'New Zealand Dollar');
INSERT INTO currency (code, description) VALUES ('MXN', 'Mexican Peso');
INSERT INTO currency (code, description) VALUES ('SGD', 'Singapore Dollar');
INSERT INTO currency (code, description) VALUES ('HKD', 'Hong Kong Dollar');
INSERT INTO currency (code, description) VALUES ('NOK', 'Norwegian Krone');
INSERT INTO currency (code, description) VALUES ('KRW', 'South Korean Won');
INSERT INTO currency (code, description) VALUES ('TRY', 'Turkish Lira');
INSERT INTO currency (code, description) VALUES ('RUB', 'Russian Ruble');
INSERT INTO currency (code, description) VALUES ('INR', 'Indian Rupee');
INSERT INTO currency (code, description) VALUES ('BRL', 'Brazilian Real');
INSERT INTO currency (code, description) VALUES ('ZAR', 'South African Rand');

INSERT INTO transaction_type (type, description) VALUES ('Buy', 'Purchase of asset');
INSERT INTO transaction_type (type, description) VALUES ('Sell', 'Sale of asset');
INSERT INTO transaction_type (type, description) VALUES ('Deposit', 'Deposit of funds');
INSERT INTO transaction_type (type, description) VALUES ('Withdrawal', 'Withdrawal of funds');
INSERT INTO transaction_type (type, description) VALUES ('Dividend', 'Dividend payment');
INSERT INTO transaction_type (type, description) VALUES ('Interest', 'Interest payment');
INSERT INTO transaction_type (type, description) VALUES ('Loan', 'Loan issuance');
INSERT INTO transaction_type (type, description) VALUES ('Repayment', 'Loan repayment');
INSERT INTO transaction_type (type, description) VALUES ('Fee', 'Fee payment');
INSERT INTO transaction_type (type, description) VALUES ('Commission', 'Commission payment');
INSERT INTO transaction_type (type, description) VALUES ('Hedge', 'Hedging transaction');
INSERT INTO transaction_type (type, description) VALUES ('Swap', 'Swap transaction');
INSERT INTO transaction_type (type, description) VALUES ('Futures', 'Futures contract transaction');
INSERT INTO transaction_type (type, description) VALUES ('Options', 'Options contract transaction');
INSERT INTO transaction_type (type, description) VALUES ('Transfer', 'Funds transfer');
INSERT INTO transaction_type (type, description) VALUES ('Exchange', 'Currency exchange');
INSERT INTO transaction_type (type, description) VALUES ('Adjustment', 'Account adjustment');
INSERT INTO transaction_type (type, description) VALUES ('Correction', 'Transaction correction');
INSERT INTO transaction_type (type, description) VALUES ('Refund', 'Refund transaction');
INSERT INTO transaction_type (type, description) VALUES ('Reversal', 'Transaction reversal');

INSERT INTO market (name, description) VALUES ('NYSE', 'New York Stock Exchange');
INSERT INTO market (name, description) VALUES ('NASDAQ', 'National Association of Securities Dealers Automated Quotations');
INSERT INTO market (name, description) VALUES ('LSE', 'London Stock Exchange');
INSERT INTO market (name, description) VALUES ('JPX', 'Japan Exchange Group');
INSERT INTO market (name, description) VALUES ('SSE', 'Shanghai Stock Exchange');
INSERT INTO market (name, description) VALUES ('HKEX', 'Hong Kong Exchanges');
INSERT INTO market (name, description) VALUES ('Euronext', 'European Stock Exchange');
INSERT INTO market (name, description) VALUES ('TSX', 'Toronto Stock Exchange');
INSERT INTO market (name, description) VALUES ('BSE', 'Bombay Stock Exchange');
INSERT INTO market (name, description) VALUES ('NSE', 'National Stock Exchange of India');
INSERT INTO market (name, description) VALUES ('DAX', 'German Stock Index');
INSERT INTO market (name, description) VALUES ('ASX', 'Australian Securities Exchange');
INSERT INTO market (name, description) VALUES ('JSE', 'Johannesburg Stock Exchange');
INSERT INTO market (name, description) VALUES ('BMV', 'Mexican Stock Exchange');
INSERT INTO market (name, description) VALUES ('Bovespa', 'Brazilian Stock Exchange');
INSERT INTO market (name, description) VALUES ('MOEX', 'Moscow Exchange');
INSERT INTO market (name, description) VALUES ('KRX', 'Korea Exchange');
INSERT INTO market (name, description) VALUES ('TWSE', 'Taiwan Stock Exchange');
INSERT INTO market (name, description) VALUES ('BIST', 'Borsa Istanbul');
INSERT INTO market (name, description) VALUES ('SWX', 'Swiss Exchange');

INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-01 09:00:00', 100.00, 500, 1, 1, 1);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-01 10:00:00', 101.50, 450, 2, 2, 2);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-01 11:00:00', 102.75, 600, 3, 3, 3);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-02 09:00:00', 103.20, 550, 4, 4, 4);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-02 10:00:00', 104.10, 500, 5, 5, 5);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-02 11:00:00', 105.00, 650, 1, 6, 6);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-03 09:00:00', 105.50, 600, 2, 1, 7);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-03 10:00:00', 106.25, 550, 3, 2, 8);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-03 11:00:00', 107.00, 700, 4, 3, 9);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-04 09:00:00', 108.00, 650, 5, 4, 10);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-04 10:00:00', 109.20, 600, 1, 5, 1);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-04 11:00:00', 110.50, 750, 2, 6, 2);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-05 09:00:00', 111.75, 700, 3, 1, 3);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-05 10:00:00', 112.50, 650, 4, 2, 4);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-05 11:00:00', 113.25, 800, 5, 3, 5);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-06 09:00:00', 114.00, 750, 1, 4, 6);
INSERT INTO financial_data (timestamp, price, volume, currency_id, transaction_type_id, market_id) VALUES ('2023-01-06 10:00:00', 115.20, 700, 2, 5, 7);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------Querying and Data Manipulation--------------------------------------------------------------------------------------
-- 1. Calculate the Average Trading Volume of a Specific Stock in the Last Quarter:
-- This query calculates the average trading volume of a specific stock, identified by a particular market_id, in the last quarter.

SELECT AVG(volume) as average_volume
FROM financial_data
WHERE market_id = 6
  AND timestamp >= date_trunc('quarter', current_date) - interval '24 months'
  AND timestamp < date_trunc('quarter', current_date);



-- 2. Find the Maximum Price of a Stock on a Specific Day:
-- This query finds the maximum price reached by a stock on a specific day.


SELECT MAX(price) as max_price
FROM financial_data
WHERE market_id = 4
  AND DATE(timestamp) = '2023-01-02';


-- 3. Calculate the Total Trading Volume for a Currency in a Specific Month:
-- This query calculates the total trading volume for a specific currency during a specific month.


SELECT currency_id, SUM(volume) as total_volume
FROM financial_data
WHERE DATE_PART('month', timestamp) = 1 AND DATE_PART('year', timestamp) = 2023
GROUP BY currency_id;


-- 4. Obtain the Daily Average Price of a Stock Throughout a Month:
-- This query calculates how the daily average price of a stock varied throughout a month.

SELECT DATE(timestamp) as date, AVG(price) as average_price
FROM financial_data
WHERE market_id = 10
  AND DATE_PART('month', timestamp) = 1 AND DATE_PART('year', timestamp) = 2023
GROUP BY DATE(timestamp);


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 1. Time-Based Aggregations
-- This query calculates the daily, weekly, or monthly average price of a specific stock using the time_bucket function to group the data into time intervals.

-- Daily average price
SELECT Time_bucket('1 day', timestamp) AS one_day,
       Avg(price)
FROM   financial_data
GROUP  BY one_day
ORDER  BY one_day;

-- Weekly average price
SELECT Time_bucket('1 week', timestamp) AS one_week,
       Avg(price)
FROM   financial_data
GROUP  BY one_week
ORDER  BY one_week;

-- Monthly average price
SELECT Time_bucket('1 month', timestamp) AS one_month,
       Avg(price)
FROM   financial_data
GROUP  BY one_month
ORDER  BY one_month;



-- 2. Window Functions
-- Window functions are useful for calculations across a set of related rows in some way. For example, this query calculates a moving average.

-- 7-day moving average of the price
SELECT   timestamp,
         price,
         avg(price) OVER (ORDER BY timestamp range BETWEEN interval '7 days' PRECEDING AND CURRENT row)
FROM     financial_data;


-- 3. Trend Analysis
-- TimescaleDB functions can be used to analyze trends in your data. For example, this query identifies upward or downward price trends of a stock.

SELECT   timestamp,
         price,
         Lag(price, 1) OVER (ORDER BY timestamp) AS previous_price
FROM     financial_data;

