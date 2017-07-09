FactoryGirl.define do
  factory :submission do
    verdict "MyString"
    language "MyString"
    execution_time 1
    code "MyText"
  end
  factory :contest do
    name "MyString"
    start "2017-04-06 19:02:10"
    duration 1
  end
  factory :test_case do
    
  end
  sequence :email do |n|
    "email#{n}@factory.com"
  end

  sequence :name do |n|
    "name#{n}"
  end

  sequence :description do |n|
    "description#{n}"
  end

  factory :problem do
    name
    description
    # TODO: _
  end

  factory :user do
    email
    password '12345678'
    password_confirmation '12345678'
    confirmed_at Time.zone.now
  end

end
