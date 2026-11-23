
SELECT
    order_status AS status_pedido,
    COUNT(*) AS total_pedidos,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS percentual_total
FROM public.olist_orders
GROUP BY order_status
ORDER BY total_pedidos DESC;
