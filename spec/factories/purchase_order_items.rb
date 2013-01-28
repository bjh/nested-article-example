# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :purchase_order_item do
    purchase_order
    description { Faker::Lorem.sentence }
  end
end
