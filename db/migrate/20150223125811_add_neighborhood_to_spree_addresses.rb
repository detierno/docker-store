class AddNeighborhoodToSpreeAddresses < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :neighborhood, :string
  end
end
