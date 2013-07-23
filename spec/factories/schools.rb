# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :school do
    sequence :name do |n|
      "University Number #{n}"
    end
    latitude 39.9503816
    longitude -75.1966437
  end
end
