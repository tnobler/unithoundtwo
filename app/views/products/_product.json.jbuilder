json.extract! product, :id, :name, :unit, :price, :vendor, :description, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
