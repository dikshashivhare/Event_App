class Event < ApplicationRecord
  belongs_to :event_organizer,optional: :true
  belongs_to :event_category,optional: :true
  extend FriendlyId
  friendly_id :name, use: :slugged
  acts_as_taggable
  mount_uploader :cover_image, CoverImageUploader
  geocoded_by :venue             # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
