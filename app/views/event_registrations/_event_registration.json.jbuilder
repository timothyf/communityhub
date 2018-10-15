json.extract! event_registration, :id, :created_at, :updated_at
json.url event_registration_url(event_registration, format: :json)
