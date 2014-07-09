class UserPlace < ActiveRecord::Base
  require "geocoder"
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


# Validations
  validates :address,  presence: true
end
