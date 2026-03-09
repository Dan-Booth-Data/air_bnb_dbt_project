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
        replace(price, '$', '')::number as price($),
        minimum_nights,
        maximum_nights,
        minimum_minimum_nights,
        maximum_minimum_nights,
        minimum_maximum_nights,
        maximum_maximum_nights,
        minimum_nights_avg_ntm,
        maximum_nights_avg_ntm,

        host_id,
        host_name,
        host_since,
        host_location,
        host_response_time,
        host_response_rate,
        host_acceptance_rate,
        host_is_superhost,
        host_thumbnail_url,
        host_picture_url,
        host_neighbourhood,
        host_listings_count,
        host_total_listings_count,
        host_verifications,
        host_has_profile_pic,
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