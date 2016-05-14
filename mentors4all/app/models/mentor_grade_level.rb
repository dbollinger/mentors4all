class MentorGradeLevel < ActiveRecord::Base
  belongs_to :mentor
  belongs_to :grade_level
end
