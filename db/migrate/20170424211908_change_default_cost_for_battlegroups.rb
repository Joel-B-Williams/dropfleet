class ChangeDefaultCostForBattlegroups < ActiveRecord::Migration[5.0]
  def change
  	change_column :battlegroups, :cost, :integer, default: 0
  end
end
