# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  school_id       :integer
#  graduating_year :integer
#  city_id         :integer
#

class User < ActiveRecord::Base
  belongs_to :school
  belongs_to :city
  has_many :authentications, :dependent => :destroy
  has_and_belongs_to_many :skills
  
  validates :email, :allow_blank => true, :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, :message => "must be a valid email address" }
  validates :name, :presence => true
end
