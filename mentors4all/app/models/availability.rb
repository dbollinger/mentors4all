class Availability < ActiveRecord::Base
  has_many :mentor_availabilities
  has_many :mentors, through: :mentor_availabilities
  has_many :educator_availabilities
  has_many :availabilities, through: :educator_availabilities
end
