# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :purchase_order do
    user
    vendor
    
    factory :purchase_order_with_items do
      ignore do
        items_count 3
      end
      
      after :create do |purchase_order, evaluator|
       FactoryGirl.create_list(:purchase_order_item, evaluator.items_count, purchase_order: purchase_order)
      end
    end
  end
end
