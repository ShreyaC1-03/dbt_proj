select 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) as total_orders,
    sum(o.order_amount) as total_spent
from {{ref('base_customers')}} as c
left join {{ref('base_orders')}} as o
    on c.customer_id = o.customer_id
group by 1,2