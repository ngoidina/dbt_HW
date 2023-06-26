with fb as (
    select 
        channel,
        clicks,
        (clicks+comments+likes+shares+views) as engagements,
        spend,
        impressions
    from {{ ref('src_ads_creative_facebook_all_data')}}
),
twitter as (
    select 
        channel,
        clicks,
        engagements,
        spend,
        impressions
from {{ ref('src_promoted_tweets_twitter_all_data')}}
)
select channel,
        clicks,
        engagements,
        spend,
        impressions
from fb
union all
select channel,
        clicks,
        engagements,
        spend,
        impressions
from twitter

