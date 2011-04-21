class Booking < ActiveRecord::Base
  validates :booked_at, :presence => true
  validates :booked_from, :presence => true
  validates :booked_to, :presence => true
  validates :is_vc, :presence => true
  validates :expected_attendees, :presence => true

  belongs_to :created_by, :class_name => "User", :foreign_key => :created_by_id
  belongs_to :updated_by, :class_name => "User", :foreign_key => :updated_by_id
  belongs_to :location
end
