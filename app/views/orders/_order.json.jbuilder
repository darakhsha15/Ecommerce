json.extract! order, :id, :order_no, :order_type, :payable_price, :tracking_no, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
