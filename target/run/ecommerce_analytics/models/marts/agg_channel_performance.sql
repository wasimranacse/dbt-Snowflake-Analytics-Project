
  
    

create or replace transient table ECOMMERCE_ANALYTICS.MARTS.agg_channel_performance
    
    
    
    as (

SELECT
    sales_chanel,
    COUNT(DISTINCT order_number) AS total_orders,
    SUM(net_revenue) AS total_revenue,
    SUM(item_sold) AS total_items
FROM ECOMMERCE_ANALYTICS.MARTS.fct_orders
GROUP BY 1
ORDER BY total_revenue DESC
    )
;


  