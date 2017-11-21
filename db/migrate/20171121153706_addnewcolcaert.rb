class Addnewcolcaert < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :full_price, :decimal
  end
end
