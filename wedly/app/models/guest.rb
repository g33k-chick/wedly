class Guest < ActiveRecord::Base
  belongs_to :user
  belongs_to :container
end
