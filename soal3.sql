WITH CTE AS
(
	SELECT *
		, MIN(order_time) OVER (PARTITION BY buyerid) AS first_order
	FROM order_tab
)
SELECT buyerid, shopid, order_time 
FROM CTE
WHERE order_time = first_order