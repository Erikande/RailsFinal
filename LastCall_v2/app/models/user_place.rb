class UserPlace < ActiveRecord::Base
  require "geocoder"
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


# Validations
  validates :address,  presence: true
  
  # validates :home_address,
  # :presence => true,
  # :confirmation => true,
  # :length => { :within => 6..40 },
  # :on => :create

  # validates :work_address,
  # :presence => true,
  # :confirmation => true,
  # :length => { :within => 6..40 },
  # :on => :create

  # validates :play_address,
  # :presence => true,
  # :confirmation => true,
  # :length => { :within => 6..40 },
  # :on => :create
end
