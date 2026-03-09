    select
        listing_id,
        date,
        available
    from {{ ref('fct_calendar') }}