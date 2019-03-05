json.extract! event, :id, :code, :location, :driver, :loaded, :created_at, :updated_at
json.url event_url(event, format: :json)
