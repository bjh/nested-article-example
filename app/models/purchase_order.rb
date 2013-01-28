class PurchaseOrder < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :user
  has_many :purchase_order_items
end
