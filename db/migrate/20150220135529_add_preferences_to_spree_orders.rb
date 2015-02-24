class AddPreferencesToSpreeOrders < ActiveRecord::Migration
  def up
    add_column :spree_orders, :preferences, :text
  end

  def down
    remove_column :spree_orders, :preferences
  end
end
