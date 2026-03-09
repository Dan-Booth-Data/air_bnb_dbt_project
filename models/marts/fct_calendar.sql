select
    listing_id,
    date,
    available
from {{ ref('stg_air_bnb_calendar') }}