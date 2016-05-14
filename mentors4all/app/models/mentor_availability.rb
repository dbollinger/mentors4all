class MentorAvailability < ActiveRecord::Base
  belongs_to :mentor
  belongs_to :availability
end
