class Source < ActiveRecord::Base
  belongs_to :pitch
  attr_accessible :name, :pitch_id
end
