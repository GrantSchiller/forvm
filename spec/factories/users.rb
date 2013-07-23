# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Fred Blogs"
    sequence :email do |n|
      "user-#{n}@example.com"
    end
  end
end
