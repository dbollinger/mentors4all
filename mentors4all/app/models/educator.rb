class Educator < ActiveRecord::Base
  has_one :user, as :contactable, dependent: :destroy
  has_many :educator_subjects
  has_many :cs_subjects, through: :educator_subjects
  has_many :educator_availabilities
  has_many :availabilities, through: :educator_availabilities
  has_many :educator_grade_levels
  has_many :grade_levels, through: :educator_grade_levels
end
