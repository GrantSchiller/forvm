# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Skill do
  
  describe "validation" do
    
    it "requires a name" do
      FactoryGirl.build(:skill, :name => nil).should_not be_valid
    end
    
  end
  
end
