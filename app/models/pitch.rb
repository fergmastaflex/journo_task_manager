class Pitch < ActiveRecord::Base
  has_many :sources
  belongs_to :user
  accepts_nested_attributes_for :sources, allow_destroy: true
  attr_accessible :complete_by, :description, :headline, :user_id, :sources_attributes
end
