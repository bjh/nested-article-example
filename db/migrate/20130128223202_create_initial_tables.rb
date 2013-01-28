class CreateInitialTables < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.column :name, :string
      t.timestamps
    end

    create_table :vendors do |t|
      t.belongs_to :company
      t.column :name, :string
      t.timestamps
    end

    create_table :users do |t|
      t.belongs_to :company
      t.column :name, :string
      t.timestamps
    end

    create_table :purchase_orders do |t|
      t.belongs_to :user
      t.belongs_to :vendor
      t.timestamps
    end

    create_table :purchase_order_items do |t|
      t.belongs_to :purchase_order       
      t.column :description, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :companies
    drop_table :vendors
    drop_table :users
    drop_table :purchase_orders
    drop_table :purchase_order_items
  end
end
