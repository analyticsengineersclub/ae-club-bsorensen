select 
   c.id as customer_id 
   ,c.name 
   ,c.email 
   ,count(distinct o.id) as n_orders 
   ,min(o.created_at) as first_order
from `analytics-engineers-club.coffee_shop.customers` c 
join `analytics-engineers-club.coffee_shop.orders` o 
  on c.id = o.customer_id 
group by 1, 2, 3
order by first_order asc
limit 5;