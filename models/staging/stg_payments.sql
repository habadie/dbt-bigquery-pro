with source_payments as (
    select * from {{ ref('raw_payments') }}
)

select
    id as payment_id,
    order_id,
    payment_method,
    amount / 100 as amount
from source_payments
