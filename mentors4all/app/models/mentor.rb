class Mentor < ActiveRecord::Base
  has_one :user, as: :contactable, dependent: :destroy
  has_many :mentor_subjects
  has_many :cs_subjects, through: :mentor_subjects
end
