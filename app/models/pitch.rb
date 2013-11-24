class Pitch < ActiveRecord::Base
  has_many :sources
  belongs_to :user

  scope :by_recent_week, lambda { where( :complete_by => (DateTime.now.end_of_week-1.week)..DateTime.now.end_of_week ) }
  scope :pending, lambda {where(:status => "Pending")}
  scope :rejected, lambda{where(:status => "Rejected")}
  scope :approved, lambda{where(:status => "Approved")}
  accepts_nested_attributes_for :sources, allow_destroy: true
  attr_accessible :complete_by, :description, :headline, :user_id, :sources_attributes, :art, :status

  def statuses
  ['Pending', 'Approved', 'Rejected']
  end
end
