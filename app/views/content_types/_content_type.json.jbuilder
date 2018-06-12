json.extract! content_type, :id, :type_name, :description, :created_at, :updated_at
json.url content_type_url(content_type, format: :json)
