FactoryGirl.define do
  factory :user do
    name "50 Cent"
    sequence(:email) {|n| "email-#{n}@example.com" }
    password "foo"
    password_confirmation "foo"
  end
end
