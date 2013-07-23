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

require 'spec_helper'

describe School do
  
  describe "validation" do
    
    it "requires a name" do
      FactoryGirl.build(:school, :name => nil).should_not be_valid
    end
    
  end
  
  it "generates latitude and longitude from name" do
    s = School.create(:name => "Harcum College")
    s.latitude.should_not be_nil
    s.longitude.should_not be_nil
  end
  
end
