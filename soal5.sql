(SELECT * , count(user_tab.buyerid) OVER(PARTITION BY user_tab.country)
FROM  user_tab, order_tab
WHERE user_tab.buyerid = order_tab.buyerid  AND MOD(order_tab.itemid,2) = 0)
UNION ALL
(SELECT * , MAX(order_tab.gmv) OVER(ORDER BY order_tab.gmv DESC)
FROM  user_tab, order_tab
WHERE user_tab.buyerid = order_tab.buyerid AND MOD(order_tab.itemid,2) <> 0)

