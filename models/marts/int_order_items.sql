select
  line_item.order_item_key,
  line_item.part_key,
  line_item.line_number,
  line_item.extendedprice,
  orders.order_key,
  orders.customer_key,
  orders.orderdate,
  {{discounted_amount("line_item.extendedprice", "line_item.discount_percentage")}} as item_discount_amount
from 
  {{ref("stg_tpch_orders")}} as orders
join 
  {{ref("stg_tpch_line_item")}} as line_item
  on orders.order_key = line_item.order_key
order by
  orders.orderdate