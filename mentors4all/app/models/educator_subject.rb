class EducatorSubject < ActiveRecord::Base
  belongs_to :educator
  belongs_to :cs_subject
end
