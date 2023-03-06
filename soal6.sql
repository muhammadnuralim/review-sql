SELECT *,
count(total_clicks) OVER(PARTITION BY perfomance.shopid) as count_total_click,
count(Item_views) OVER(PARTITION BY perfomance.shopid) as count_item_views,
count(impressions) OVER(PARTITION BY perfomance.shopid) as count_impressions
FROM perfomance, order_tab
WHERE perfomance.shopid = order_tab.shopid