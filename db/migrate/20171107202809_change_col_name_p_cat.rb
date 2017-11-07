class ChangeColNamePCat < ActiveRecord::Migration[5.1]
  def change
  rename_column :product_categories, :name, :pname
  end
end
