CREATE TABLE online_sales (
    order_id INTEGER,
    order_date TEXT,
    product_id INTEGER,
    amount REAL
);

INSERT INTO online_sales (order_id, order_date, product_id, amount) VALUES
(101, '2024-01-15', 1, 25.50),
(101, '2024-01-15', 2, 15.00),
(102, '2024-01-20', 3, 50.00),
(103, '2024-02-05', 4, 120.75),
(103, '2024-02-05', 5, 30.25),
(104, '2024-02-10', 1, 25.50),
(105, '2024-03-12', 6, 200.00),
(106, '2024-03-22', 7, 75.50);

SELECT
  EXTRACT(YEAR FROM order_date) AS sales_year,
  EXTRACT(MONTH FROM order_date) AS sales_month,
  SUM(amount) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM
  online_sales
GROUP BY
  sales_year,
  sales_month
ORDER BY
  monthly_revenue DESC
LIMIT 3;

