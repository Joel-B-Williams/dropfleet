class AddCostToShips < ActiveRecord::Migration[5.0]
  def change
  	add_column(:ships, :cost, :integer)
  end
end
