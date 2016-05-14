class Educator < ActiveRecord::Base
  has_one :user, as :contactable, dependent: :destroy
  has_many :educator_subjects
  has_many :cs_subjects, through: :educator_subjects
end
