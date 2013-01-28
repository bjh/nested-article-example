# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vendor do
    company
    name    { Faker::Company.name }
    
    factory :vendor_with_purchase_orders do
      ignore do
        purchase_order_count 5
      end
      
      after :create do |vendor, evaluator|
        FactoryGirl.create_list(:purchase_order_with_items, evaluator.purchase_order_count, vendor: vendor)
      end
    end
  end
end
