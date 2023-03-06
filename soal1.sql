WITH CTE AS
(
	SELECT *
		, MIN(order_time) OVER (PARTITION BY buyerid) AS firstorder
		, MAX(order_time) OVER (PARTITION BY buyerid) AS latestorder
	FROM order_tab
)
SELECT buyerid, shopid, order_time 
FROM CTE
WHERE order_time in (firstorder, latestorder)