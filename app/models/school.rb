# == Schema Information
#
# Table name: schools
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  latitude   :float
#  longitude  :float
#  created_at :datetime
#  updated_at :datetime
#

class School < ActiveRecord::Base
  geocoded_by :name
  before_validation :geocode, :if => :name_changed?
  
  has_many :users
  
  validates :name, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
end
