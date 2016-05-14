class CsSubject < ActiveRecord::Base
  has_many :mentor_subjects
  has_many :mentors, through: :mentor_subjects
  has_many :educator_subjects
  has_many :educators, through: :educator_subjects
end
