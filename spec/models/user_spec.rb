# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe User do
  
  describe "validation" do
    
    it "requires a name" do
      FactoryGirl.build(:user, :name => nil).should_not be_valid
    end
    
    it "doesn't require an email" do
      FactoryGirl.build(:user, :email => nil).should be_valid
    end
    
    it "accepts valid emails" do
      emails = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
      emails.each do |a|
        FactoryGirl.build(:user, :email => a).should be_valid
      end
    end
    
    it "rejects invalid emails" do
      emails = %w[user@foo,com user_at_foo.org example.user@foo.]
      emails.each do |a|
        FactoryGirl.build(:user, :email => a).should_not be_valid
      end
    end
    
  end
  
end
