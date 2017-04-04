class AddFleetIdToBattlegroups < ActiveRecord::Migration[5.0]
  def change
    add_column :battlegroups, :fleet_id, :integer
  end
end
