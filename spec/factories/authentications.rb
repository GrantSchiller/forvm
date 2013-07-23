# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :authentication do
    user_id 1
    provider "developer"
    uid "test123"
  end
end
