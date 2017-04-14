class ChangeDefaultForFleetsCost < ActiveRecord::Migration[5.0]
  def change
  	change_column :fleets, :cost, :integer, default: 0
  end
end
