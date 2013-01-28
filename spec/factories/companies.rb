# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    name { Faker::Company.name }
    
    factory :company_with_everything do
      ignore do
        users_count 3
        vendors_count 4
      end
      
      after :create do |company, evaluator|
        FactoryGirl.create_list(:user, evaluator.users_count, company: company)
        FactoryGirl.create_list(:vendor_with_purchase_orders, evaluator.vendors_count, company: company)
      end
    end
  end
end
