json.extract! bounty, :id, :user_id, :title, :description, :url, :amount, :status, :created_at, :updated_at
json.url bounty_url(bounty, format: :json)
json.description bounty.description.to_s
