json.extract! post, :id, :name, :title, :description, :age, :address, :created_at, :updated_at
json.url post_url(post, format: :json)
