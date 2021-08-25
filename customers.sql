select 
   customers.id as customer_id,
   customers.name as full_name, 
   customers.email as email_address, 
   count(distinct orders.id) as n_orders, 
   min(orders.created_at) as first_order_at
   /** New comment **/
from `analytics-engineers-club.coffee_shop.customers` customers 
join `analytics-engineers-club.coffee_shop.orders` orders
  on customers.id = orders.customer_id 
group by 1, 2, 3
order by first_order_at asc
limit 5;