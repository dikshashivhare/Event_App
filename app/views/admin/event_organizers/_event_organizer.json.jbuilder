json.extract! event_organizer, :id, :name, :email, :address, :city, :state, :country, :latitude, :longitude, :logo_image, :contact, :slug, :created_at, :updated_at
json.url event_organizer_url(event_organizer, format: :json)
