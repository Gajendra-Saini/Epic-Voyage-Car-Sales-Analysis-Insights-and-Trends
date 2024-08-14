-- Business Flow Overview
-- This SQL script addresses the tasks related to car sales, car policies, and brand sales summary.
-- The tables used are: cars, cars_sales, cars_policy


-- Task 1: Find the total number of cars that were put for sale in the year 2020.
SELECT COUNT(*) AS car_count
FROM cars_sales
WHERE YEAR(ad_placed_on) = '2020';

-- Task 2: Find the number of cars sold by fuel type.
-- Note: A car is considered sold when the sold_on column is populated.
WITH sales_summary AS (
    SELECT s.car_id, c.fuel
    FROM cars_sales s
    JOIN cars c ON s.car_id = c.car_id 
    WHERE s.sold_on IS NOT NULL
)
SELECT fuel, COUNT(*) AS car_count
FROM sales_summary
GROUP BY fuel;

-- Task 3: Calculate the sales window for each car sold by the company.
-- The sales window is defined as the time elapsed between the ad placement date and the sale date.
WITH temp AS (
    SELECT car_id, ad_placed_on, sold_on, original_selling_price
    FROM cars_sales
    WHERE sold_on IS NOT NULL
),
val AS (
    SELECT car_id, original_selling_price,
           CAST(DATEDIFF(DAY, ad_placed_on, sold_on) / 30 AS VARCHAR) + ' Months ' +
           CAST(DATEDIFF(DAY, ad_placed_on, sold_on) % 30 AS VARCHAR) + ' Days' AS sales_window
    FROM temp
)
SELECT c.name AS car_name, v.car_id, v.original_selling_price, v.sales_window
FROM val v
JOIN cars c ON c.car_id = v.car_id;

-- Task 4: Find the total sales by car brand.
WITH temp AS (
    SELECT car_id, LEFT(name, CHARINDEX(' ', name) - 1) AS brand
    FROM cars
),
val AS (
    SELECT car_id, original_selling_price
    FROM cars_sales 
    WHERE sold_on IS NOT NULL
),
final AS (
    SELECT t.brand, v.original_selling_price
    FROM val v
    JOIN temp t ON t.car_id = v.car_id
)
SELECT f.brand, SUM(f.original_selling_price) AS total_sales
FROM final f
GROUP BY f.brand;

-- Task 5: Determine the percentage of cars sold that have an associated policy.
WITH sales_summary AS (
    SELECT s.state, p.policy_number, 
           CASE WHEN p.policy_number IS NULL THEN 0 ELSE 1 END AS policy_present
    FROM cars_sales s
    LEFT JOIN cars_policy p ON s.car_id = p.car_id
    WHERE s.sold_on IS NOT NULL
)
SELECT state, 
       ROUND(CAST(100.0 * SUM(policy_present) / COUNT(*) AS FLOAT), 2) AS policy_car_sales_pct
FROM sales_summary
GROUP BY state;

-- Task 6: Provide a summary by state, including total sales value, total cars sold, and the percentage of cars sold with a policy.
WITH sales_summary AS (
    SELECT s.state, s.original_selling_price, p.policy_number, 
           CASE WHEN p.policy_number IS NULL THEN 0 ELSE 1 END AS policy_present
    FROM cars_sales s
    LEFT JOIN cars_policy p ON s.car_id = p.car_id
    WHERE s.sold_on IS NOT NULL
)
SELECT UPPER(state) AS state, 
       SUM(original_selling_price) AS total_sales_value, 
       COUNT(*) AS total_cars_sold, 
       ROUND(CAST(100.0 * SUM(policy_present) / COUNT(*) AS FLOAT), 2) AS policy_car_sales_pct
FROM sales_summary
GROUP BY state;
