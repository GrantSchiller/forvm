require 'spec_helper'

describe CitiesController do
  
  before do
    @city = FactoryGirl.create(:city)
  end
  
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show', :id => @city.id
      response.should be_success
    end
  end

end
