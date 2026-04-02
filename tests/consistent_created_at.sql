SELECT * FROM {{ ref('dim_listings_cleansed')}} d
INNER JOIN {{ ref('fct_reviews')}} r
USING (listing_id)
WHERE r.review_date < d.created_at 
LIMIT 10