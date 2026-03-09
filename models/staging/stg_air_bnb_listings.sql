with 
source as (
    select * from {{ source('air_bnb_raw', 'air_bnb_listings') }}
),

--Rename columns and remove unneeded ones from datasource
renamed as (

    select
        id as listing_id,
        listing_url,
        name as listing_name,
        description as listing_description,
        picture_url as listing_picture,
        latitude,
        longitude,
        neighbourhood_cleansed as neighbourhood,
        property_type,
        room_type,
        accommodates,
        bathrooms,
        bathrooms_text,
        bedrooms,
        beds,
        amenities,
        replace(price, '$', '')::number as listing_price($),
        minimum_nights,
        maximum_nights,

        host_id,
        host_name,
        host_since,
        host_acceptance_rate,
        host_is_superhost as is_superhost,
        host_verifications,
        host_identity_verified,

        number_of_reviews,
        review_scores_rating,
        review_scores_accuracy,
        review_scores_cleanliness,
        review_scores_checkin,
        review_scores_communication,
        review_scores_location,
        review_scores_value,


    from source

)

select * from renamed