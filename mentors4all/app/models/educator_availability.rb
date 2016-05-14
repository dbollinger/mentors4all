class EducatorAvailability < ActiveRecord::Base
  belongs_to :educator
  belongs_to :availability
end
