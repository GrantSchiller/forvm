# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  latitude   :float
#  longitude  :float
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe City do
  
  describe "validation" do
    
    it "requires a name" do
      FactoryGirl.build(:city, :name => nil).should_not be_valid
    end
    
    it "requires a unique name" do
      c = FactoryGirl.create(:city)
      FactoryGirl.build(:city, :name => c.name).should_not be_valid
    end
    
  end
  
  it "generates latitude and longitude from name" do
    c = City.create(:name => "Philadelphia")
    c.latitude.should_not be_nil
    c.longitude.should_not be_nil
  end
  
end
