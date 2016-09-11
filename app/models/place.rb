class Place < ActiveRecord::Base
  validates :city, :presence => true
end
