json.extract! event, :id, :name, :type, :created_at, :updated_at
json.url event_url(event, format: :json)
