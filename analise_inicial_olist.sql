SELECT 
    t2.customer_state AS estado, 
    COUNT(t1.order_id) AS total_pedidos
FROM olist_orders_dataset AS t1
JOIN olist_customers_dataset AS t2 
    ON t1.customer_id = t2.customer_id
GROUP BY t2.customer_state
ORDER BY total_pedidos DESC
LIMIT 5;