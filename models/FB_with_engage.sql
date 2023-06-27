
    select 
        *,
        (clicks+comments+likes+shares+views) as engagements
    from {{ ref('src_ads_creative_facebook_all_data')}}

