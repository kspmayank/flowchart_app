json.extract! user, :id, :username, :password_hash, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
