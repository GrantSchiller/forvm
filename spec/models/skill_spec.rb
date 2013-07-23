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
    
    it "requires a unique name" do
      s = FactoryGirl.create(:skill)
      FactoryGirl.build(:skill, :name => s.name).should_not be_valid
    end
    
    it "accepts valid names" do
      names = %w[ruby red_heart nintendo64 ruby-on-rails]
      names.each do |n|
        FactoryGirl.build(:skill, :name => n).should be_valid
      end
    end
    
    it "rejects invalid banes" do
      names = %w[@some,thing #yoloswag this:awesome]
      names.push "a skill"
      names.each do |n|
        FactoryGirl.build(:skill, :name => n).should_not be_valid
      end
    end
    
  end
  
end
