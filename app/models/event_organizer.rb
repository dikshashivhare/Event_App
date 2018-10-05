class EventOrganizer < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  geocoded_by :address             # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
