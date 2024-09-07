select 
o_orderkey as order_key,
o_custkey as customer_key,
o_orderstatus as status_code,
o_totalprice as totalprice,
o_orderdate as orderdate

from 
snowflake_sample_data.tpch_sf1.orders