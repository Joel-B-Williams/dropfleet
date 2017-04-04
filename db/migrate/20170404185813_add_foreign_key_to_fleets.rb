class AddForeignKeyToFleets < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :fleets, :users, { name: 'user_id' }
  end
end
