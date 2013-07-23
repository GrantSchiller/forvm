# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  address    :string(255)
#  latitude   :float
#  longitude  :float
#

class User < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  
  has_many :authentications, :dependent => :destroy
  
  has_and_belongs_to_many :skills
  
  validates :email, :allow_blank => true, :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, :message => "must be a valid email address" }
  validates :name, :presence => true
end
