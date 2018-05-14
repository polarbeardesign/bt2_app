json.extract! event, :id, :start_time, :end_time, :event_type, :title, :location, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
