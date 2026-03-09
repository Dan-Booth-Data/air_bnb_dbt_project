select distinct
    host_id,
    host_name,
    host_since,
    host_acceptance_rate,
    is_superhost,
    host_verifications,
    host_identity_verified,
from {{ ref('stg_air_bnb_listings') }}