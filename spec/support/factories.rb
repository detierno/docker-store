FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end

  factory :user do
    name 'John'
    email
    password 'secret123'
  end

end
