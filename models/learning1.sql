
    select 
        date,
        ad_id, 
        adset_id,
        channel,
        spend,
        imps as impressions,
        clicks,
        revenue,
        conv as total_conversions,
        campaign_id
from {{ ref('src_ads_bing_all_data')}}



