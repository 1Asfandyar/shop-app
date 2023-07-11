json.extract! product_inquiry, :id, :product_id, :email, :comments, :created_at, :updated_at
json.url product_inquiry_url(product_inquiry, format: :json)
