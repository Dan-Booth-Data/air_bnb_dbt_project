select
        listing_id,
        listing_url,
        listing_name,
        listing_description,
        listing_picture,
        latitude,
        longitude,
        neighbourhood,
        property_type,
        room_type,
        accommodates,
        bathrooms,
        bathrooms_text,
        bedrooms,
        beds,
        listing_price, -- not included in fct_calendar because in the data provided there is one price per listing.
        minimum_nights,
        maximum_nights,
        host_id
from {{ ref('stg_air_bnb_listings')}}