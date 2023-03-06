WITH CTE AS
(
	SELECT *
    , COUNT(buyerid) OVER (PARTITION BY buyerid ORDER BY month(order_time)) as more_than
    FROM order_tab
)
SELECT *
FROM CTE
WHERE more_than > 1