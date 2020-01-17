json.extract! product, :id, :name, :price, :sku, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
