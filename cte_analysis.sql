WITH overall_avg AS(
    SELECT AVG(Weekly_Sales) AS avg_sales
    FROM walmart_sales
),
sales_classification AS (
    SELECT
        store,
        weekly_sales,
        CASE
            WHEN weekly_sales > avg_sales THEN 'High'
            ELSE 'Low'
        END AS sales_level
    FROM walmart_sales
    CROSS JOIN overall_avg
),
store_performance AS (
    SELECT
        store,
        COUNT(*) AS total_weeks,
        SUM(CASE WHEN sales_level = 'High' THEN 1 ELSE 0 END) AS high_sales_weeks
    FROM sales_classification
    GROUP BY store
)


SELECT
    store,
    total_weeks,
    high_sales_weeks,
    CASE
        WHEN high_sales_weeks >= 143 THEN 'Strong performer'
        WHEN high_sales_weeks BETWEEN 100 AND 142 THEN 'Moderate performer'
        ELSE 'Weak performer'
    END AS performance_category
FROM store_performance
ORDER BY high_sales_weeks DESC;


