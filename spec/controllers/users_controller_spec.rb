require 'spec_helper'

describe UsersController do
  
  before do
    @user = FactoryGirl.create(:user)
  end
  
  describe "GET 'show'" do
    
    it "returns http success" do
      get 'show', :id => @user.id
      response.should be_success
    end
    
  end

  describe "GET 'edit'" do
    
    it "returns http success" do
      get 'edit', :id => @user.id
      response.should be_success
    end
    
  end

  # describe "PATCH 'update'" do
  #   it "returns http success" do
  #     patch 'update', :id => @user.id
  #     response.should be_success
  #   end
  # end
  # 
  # describe "DELETE 'destroy'" do
  #   it "returns http success" do
  #     delete 'destroy', :id => @user.id
  #     response.should be_success
  #   end
  # end

end
