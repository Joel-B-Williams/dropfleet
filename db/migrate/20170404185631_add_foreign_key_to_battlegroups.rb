class AddForeignKeyToBattlegroups < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :battlegroups, :fleets, { name: 'fleet_id' }
  end
end
