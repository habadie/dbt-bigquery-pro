with source_orders as (
    select * from {{ ref('raw_orders') }}
)

select
    id as order_id,
    user_id,
    order_date,
    status
from source_orders