class Mentor < ActiveRecord::Base
  has_one :user, as: :contactable, dependent: :destroy
  accepts_nested_attributes_for :user

  has_many :mentor_subjects
  has_many :cs_subjects, through: :mentor_subjects
  has_many :mentor_availabilities
  has_many :availabilities, through: :mentor_availabilities
  has_many :mentor_grade_levels
  has_many :grade_levels, through: :mentor_grade_levels
  has_many :mentor_contacts
end
