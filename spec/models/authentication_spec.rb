# == Schema Information
#
# Table name: authentications
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  provider   :string(255)
#  uid        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Authentication do
  
  describe "validation" do
    
    it "requires a provider" do
      FactoryGirl.build(:authentication, :provider => nil).should_not be_valid
    end
    
    it "requires a uid" do
      FactoryGirl.build(:authentication, :provider => nil).should_not be_valid
    end
    
  end
  
end
