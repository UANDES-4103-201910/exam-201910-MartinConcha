json.extract! product, :id, :brand, :model, :variant, :price, :short, :long, :created_at, :updated_at
json.url product_url(product, format: :json)
