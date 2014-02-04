require 'spec_helper'

FactoryGirl.define do

  factory :user do
    sequence(:email) { |n| "email#{n}@email.com" }
    sequence(:username) { |n| "user#{n}" }
    sequence(:first_name) { |n| "first#{n}" }
    sequence(:last_name) { |n| "last#{n}" }
  end

end