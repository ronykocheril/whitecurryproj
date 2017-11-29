class RemovecolUsers < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.remove :userEmail
      t.remove :userProvince
      t.remove :province_id
    end
  end
end
