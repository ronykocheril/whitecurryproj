class FixColNameUsers < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :users, :userFirstName, :name
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
