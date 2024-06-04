{{config(materialized = 'table')}}

SELECT
    o.order_id,
    c.first_name,
    c.last_name,
    o.order_date,
    o.total_amount
FROM {{source('MANISH_AIW24','ORDERS')}} o
JOIN {{source('MANISH_AIW24', 'CUSTOMERS')}} c ON o.customer_id = c.customer_id
