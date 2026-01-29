# walmart-sales-analysis
This project analyzes 143 weeks of Walmart store sales data to evaluate store performance consistency and examine the impact of economic and external factors on weekly sales. The analysis focuses on identifying strong and weak performing stores based on sustained performance rather than isolated outliers.

Objectives
1. Assess weekly sales performance across Walmart stores
2.Identify consistently high-performing and low-performing stores
3.Analyze the influence of economic indicators (CPI, unemployment rate, fuel price)
4.Evaluate the effect of holiday weeks on sales performance

The Dataset was sourced from Kaggle (Walmart Sales Dataset) and contained the following info:
1. Rows: 6,436
2. Columns: 8
3. Time Period: 143 weeks
Key Columns:
1. Store ID
2. Weekly Sales
3. Holiday Flag
4. Temperature
5. Fuel Price
6. CPI
7. Unemployment Rate

Tools used in this analysis:

Microsoft Excel: Data cleaning, pivot tables, exploratory analysis

Python (Pandas): CSV import and preprocessing

SQL (SQLite): Data aggregation, classification, and correlation analysis

Methodology

1.Cleaned and explored the dataset in Excel
2.Calculated overall average weekly sales and per-store averages
3. Classified weekly sales as High or Low relative to the overall average
4. Evaluated store performance based on consistency of high-performing weeks
5. Used SQL queries to analyze relationships between sales and external factors

Key Findings

1. Stores with consistently above-average weekly sales showed stronger long-term performance than stores with occasional sales spikes
2. Holiday weeks recorded approximately 8% higher average sales compared to non-holiday weeks
3. Unemployment rate showed the strongest inverse relationship with weekly sales
4. CPI also exhibited an inverse relationship with sales, while fuel price showed a weak positive correlation
5. Temperature had a weak negative correlation with weekly sales

Store Performance Classification

Stores were categorized based on the number of weeks with above-average sales:

1. Very Strong Performers: 143 weeks

2. Strong Performers: 135–142 weeks

3. Moderate Performers: 100–134 weeks

4. Weak Performers: Fewer than 100 weeks

Recommendations

Perform time-series analysis for trend and seasonality detection

Build interactive dashboards for real-time performance tracking

Perform time-series analysis for trend and seasonality detection

Build interactive dashboards for real-time performance tracking
