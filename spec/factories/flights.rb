FactoryGirl.define do
  factory :flight do
    to_id 1
    from_id 2
    no_of_passengers 100
    flight_date "MyString"
    date "MyString"
    airport nil
  end
end
