# Write your MySQL query statement below
WITH max_change_date AS (
    SELECT 
        product_id, 
        MAX(change_date) AS max_date
    FROM 
        Products
    WHERE 
        change_date <= '2019-08-16'
    GROUP BY 
        product_id
)
SELECT 
    p.product_id,
    COALESCE(pd.new_price, 10) AS price
FROM 
    (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN 
    max_change_date mcd
ON 
    p.product_id = mcd.product_id
LEFT JOIN 
    Products pd
ON 
    p.product_id = pd.product_id 
    AND mcd.max_date = pd.change_date;