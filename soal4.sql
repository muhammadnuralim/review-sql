(SELECT * , MAX(order_tab.gmv) OVER(ORDER BY order_tab.gmv DESC)
FROM  user_tab, order_tab
WHERE user_tab.buyerid = order_tab.buyerid AND user_tab.country = "ID" LIMIT 10)
UNION ALL
(SELECT * , MAX(order_tab.gmv) OVER(ORDER BY order_tab.gmv DESC)
FROM  user_tab, order_tab
WHERE user_tab.buyerid = order_tab.buyerid AND user_tab.country = "SG" LIMIT 10)