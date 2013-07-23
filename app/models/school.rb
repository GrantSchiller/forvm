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
  include Location
  
  belongs_to :city
end
