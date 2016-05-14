class MentorContact < ActiveRecord::Base
  belongs_to :mentor
  belongs_to :educator
end
