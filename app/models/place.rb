class Place < ActiveRecord::Base
  has_many :routes
  belongs_to :user
  validates :name, :presence => true
end
