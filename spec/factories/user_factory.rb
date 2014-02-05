FactoryGirl.define do
  
  factory :user do
    sequence(:email)      { |n| "email#{n}"}
    sequence(:username)   { |n| "username#{n}"}
    sequence(:first_name) { |n| "first_name#{n}"}
    sequence(:last_name)  { |n| "last_name#{n}"}
    sequence(:password)   { |n| "password#{n}"}
  end

end