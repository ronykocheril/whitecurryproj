class AddProvrefToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :province, foreign_key: true
  end
end
