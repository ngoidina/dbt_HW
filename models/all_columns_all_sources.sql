{{ dbt_utils.union_relations(

    relations=[ref('src_ads_bing_all_data'), ref('FB_with_engage'), ref('src_ads_tiktok_ads_all_data'), ref('src_promoted_tweets_twitter_all_data')]

) }}