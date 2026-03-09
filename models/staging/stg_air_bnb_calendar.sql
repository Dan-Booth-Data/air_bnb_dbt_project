with 
source as (
    select * from {{ source('air_bnb_raw', 'air_bnb_calendar') }}
),

renamed as (
    select
        listing_id,
        date,
        available
    from source

)

select * from renamed