class Pitch < ActiveRecord::Base
  belongs_to :user
  attr_accessible :complete_by, :description, :headline, :user_id
end
