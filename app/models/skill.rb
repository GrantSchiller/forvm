# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Skill < ActiveRecord::Base
  has_and_belongs_to_many :users
  
  validates :name, :presence => true, :format => { :with => /\A[A-Za-z\d_-]+\z/, :message => "must be alphanumerical" }, :uniqueness => { :case_sensitive => true }
end
