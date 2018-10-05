json.extract! event, :id, :name, :description, :city, :state, :country, :venue, :latitude, :longitude, :cover_image, :event_organizer_id, :event_category_id, :is_featured, :slug, :created_at, :updated_at
json.url event_url(event, format: :json)
