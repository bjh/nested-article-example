class Company < ActiveRecord::Base
  has_many :users
  has_many :vendors
  has_many :purchase_orders, :through => :vendors
end
