class MentorSubject < ActiveRecord::Base
  belongs_to :mentor
  belongs_to :cs_subject
end
