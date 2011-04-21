class Room < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :capacity,:presence => true
  validates :has_projector, :presence => true
  validates :has_vc, :presence => true

  belongs_to :location
end
