# This migration comes from spree_tax_cloud (originally 20140623225628)
class AddTicToProducts < ActiveRecord::Migration
  def up
    add_column :spree_products, :tax_cloud_tic, :string, default: nil
  end
  
  def down
    remove_column :spree_products, :tax_cloud_tic
  end
end
