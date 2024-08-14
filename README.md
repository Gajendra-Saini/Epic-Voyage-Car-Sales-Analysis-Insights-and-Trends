# Epic Voyage Car Sales Analysis: Comprehensive DataDriven Insights

## Project Overview:
This project focuses on a detailed analysis of car sales data for Epic Voyage, a company that specializes in selling vehicles across various states. The objective of this analysis is to provide actionable insights into the company's sales performance, customer behavior, and policy attachment rates. By answering critical business questions, this analysis supports strategic decisionmaking and helps optimize sales and marketing strategies.

## Key Objectives:
1. StateWise Sales Analysis:
    Identify which states are leading or lagging in car sales.
    Calculate the total sales value and the number of cars sold in each state.

2. Popular Car Models and Brands:
    Determine the most popular car models and brands among customers.

3. Insurance Policy Analysis:
    Analyze the percentage of cars sold with insurance policies in each state.
    Identify states with the highest and lowest policy attachment rates.

4. Performance Ranking and Tier Classification:
    Rank states based on total sales value, number of cars sold, and the diversity of brands sold.
    Categorize states into performance tiers using scaled ranking metrics.

 ## Data and Tools:
 Data Sources:
   `cars`: Contains details of all cars currently with the company.
   `cars_sales`: Stores all sales details of the cars.
   `cars_policy`: Contains policy details related to a given car owned by a customer.

 ## Tools and Techniques:
  ### SQL: Utilized for querying and summarizing data from the provided tables to address business questions. Key SQL tasks included:
     Counting cars listed for sale in 2020.
     Summarizing car sales by fuel type.
     Calculating the sales window for each sold car.
     Aggregating total sales by car brand.
     Analyzing the percentage of sold cars with attached insurance policies by state.
  ### Python: Used for further data manipulation and generating reports from the CSV file containing the car sales summary.
     Recreating statewise summary reports with additional metrics like the number of unique brands sold.
     Ranking states based on sales, number of cars sold, and brand diversity.
     Classifying states into performance tiers using minmax scaling.

 ## Results and Insights:
 -The analysis revealed which states are outperforming others in terms of car sales and policy attachment rates.
 -The identification of popular car brands and models provided insights into customer preferences.
 -The statewise performance ranking and tier classification offered a clear view of regional sales dynamics and helped in identifying areas for improvement.

