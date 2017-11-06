class FixCName < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :product_categories, :categoryName, :name
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
