json.array!(@orderdetails) do |orderdetail|
  json.extract! orderdetail, :id, :order_id, :product_id, :quantity, :unit_price
  json.url orderdetail_url(orderdetail, format: :json)
end
