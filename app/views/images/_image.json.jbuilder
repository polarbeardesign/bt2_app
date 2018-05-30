json.extract! image, :id, :caption, :keywords, :created_at, :updated_at
json.url image_url(image, format: :json)
