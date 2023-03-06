(SELECT * , count(user_tab.buyerid) OVER(PARTITION BY user_tab.country) as count_buyer_even
FROM  user_tab, order_tab
WHERE user_tab.buyerid = order_tab.buyerid  AND MOD(order_tab.itemid,2) = 0)
UNION ALL
(SELECT * , MAX(order_tab.gmv) OVER(ORDER BY order_tab.gmv DESC) as count_buyer_odd
FROM  user_tab, order_tab
WHERE user_tab.buyerid = order_tab.buyerid AND MOD(order_tab.itemid,2) <> 0)

