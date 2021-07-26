json.extract! review, :id, :comment, :seller_id, :buyer_id, :profile_id, :created_at, :updated_at
json.url review_url(review, format: :json)
