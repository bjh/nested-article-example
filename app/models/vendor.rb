class Vendor < ActiveRecord::Base
  belongs_to :company
  has_many :purchase_orders
end
