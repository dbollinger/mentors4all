class GradeLevel < ActiveRecord::Base
  has_many :educator_grade_levels
  has_many :educators, through: :educator_grade_levels
  has_many :mentor_grade_levels
  has_many :mentors, through: :mentor_grade_levels
end
