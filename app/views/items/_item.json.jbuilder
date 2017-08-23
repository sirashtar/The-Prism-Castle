json.extract! item, :id, :title, :description, :type, :subtype, :weight, :buy_shop, :required_level, :buying_price, :selling_price, :created_at, :updated_at
json.url item_url(item, format: :json)
