class Route < ActiveRecord::Base
  belongs_to :place

  validates :grade, :presence => true
end
