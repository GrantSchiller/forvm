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
#  city_id    :integer
#

class School < ActiveRecord::Base
  geocoded_by :name
  before_validation :geocode, :if => :name_changed?
  
  has_many :users
  belongs_to :city
  
  validates :name, :presence => true, :uniqueness => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
end
