# Epic Voyage Car Sales Analysis: Comprehensive Data-Driven Insights

## Project Overview:
This project delves into an in-depth analysis of car sales data for Epic Voyage, a company that operates across various states. The main goal is to generate actionable insights into the company’s sales performance, customer behavior, and policy attachment rates. By addressing key business questions, this analysis supports strategic decision-making and aids in optimizing sales and marketing strategies.

## Key Objectives:
1. State-Wise Sales Analysis:
   - Identify the leading and lagging states in terms of car sales.
   - Calculate both the total sales value and the number of cars sold in each state.

2. Popular Car Models and Brands:
   - Determine the most popular car models and brands among customers.

3. Insurance Policy Analysis:
   - Analyze the percentage of cars sold with insurance policies across different states.
   - Identify states with the highest and lowest rates of policy attachment.

4. Performance Ranking and Tier Classification:
   - Rank states based on total sales value, the number of cars sold, and the diversity of brands sold.
   - Classify states into performance tiers using scaled ranking metrics.

## Data and Tools:
- Data Sources:
  - `cars`: Details all cars currently in the company’s inventory.
  - `cars_sales`: Stores all the sales records for the cars.
  - `cars_policy`: Contains information on policies associated with cars owned by customers.

## Tools and Techniques:
- SQL:
  - Used to query and summarize data from the provided tables to answer the business questions. Key SQL tasks included:
    - Counting the number of cars listed for sale in 2020.
    - Summarizing car sales by fuel type.
    - Calculating the sales window for each sold car.
    - Aggregating total sales by car brand.
    - Analyzing the percentage of sold cars that had attached insurance policies by state.

- Python:
  - Used for further data manipulation and to generate reports from the car sales summary CSV file. Key Python tasks included:
    - Recreating state-wise summary reports with additional metrics like the number of unique brands sold.
    - Ranking states based on total sales, the number of cars sold, and brand diversity.
    - Classifying states into performance tiers using min-max scaling.

## Results and Insights:
- The analysis identified which states are outperforming others in terms of car sales and policy attachment rates.
- The findings on popular car brands and models provided valuable insights into customer preferences.
- The state-wise performance ranking and tier classification offered a clear view of regional sales dynamics, helping to pinpoint areas for improvement.
