SELECT * 
FROM {{ ref('stg_raw__adwords_campaign') }}
UNION ALL
SELECT *
FROM {{ ref('stg_raw__bing_campaign') }}
UNION ALL
SELECT *
FROM {{ ref('stg_raw__criteo_campaign') }}
UNION ALL
SELECT *
FROM {{ ref('stg_raw__facebook_campaign') }}