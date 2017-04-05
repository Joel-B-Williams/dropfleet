class CreateFleets < ActiveRecord::Migration[5.0]
  def change
    create_table :fleets do |t|
    	t.string :name,	 				 	presence: true
    	t.string :faction, 				presence: true
    	t.integer :points_level,	presence: true
    	t.integer :cost, 				 	presence: true, default: 0

      t.timestamps
    end
  end
end
