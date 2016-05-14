class User < ActiveRecord::Base
  belongs_to :contactable, polymorphic: true
end
