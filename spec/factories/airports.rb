FactoryGirl.define do
  factory :airport do
    location
    name { Faker::Company.name }
  end
end
