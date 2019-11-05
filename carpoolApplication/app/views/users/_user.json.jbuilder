json.extract! user, :id, :email, :role, :first_name, :last_name, :uin, :created_at, :updated_at
json.url user_url(user, format: :json)
