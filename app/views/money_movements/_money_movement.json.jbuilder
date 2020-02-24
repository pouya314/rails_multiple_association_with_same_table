json.extract! money_movement, :id, :amount, :from_account_id, :to_account_id, :created_at, :updated_at
json.url money_movement_url(money_movement, format: :json)
