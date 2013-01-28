# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    company
    name { Faker::Company.name }
  end
end
