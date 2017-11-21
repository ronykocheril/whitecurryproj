class Changecolnameproducts < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :products, :productName, :name
  end

end
