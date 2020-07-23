json.extract! budget_item, :id, :qty, :budget_item_id, :product_id, :created_at, :updated_at
json.url budget_item_url(budget_item, format: :json)
