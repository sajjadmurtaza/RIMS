json.array!(@products) do |product|
  json.extract! product, :id, :product_name, :unit_price, :quantity, :isbn, :desc, :category_id
  json.url product_url(product, format: :json)
end
