
{{ dbt_utils.union_relations(

    relations=[ref('src_ads_creative_facebook_all_data'), ref('src_ads_bing_all_data')]

) }}

