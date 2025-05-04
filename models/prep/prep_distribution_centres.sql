WITH
    source as (
        SELECT
            *
        FROM
            {{ source('thelook_ecommerce', 'distribution_centers') }}
    )

SELECT
    id,
    name,
    latitude,
    longitude,
    distibution_center_geom
FROM    source