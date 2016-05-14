class Mentor < ActiveRecord::Base
  has_one :user, as: :contactable, dependent: :destroy
end
