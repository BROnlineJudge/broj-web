FactoryGirl.define do
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
