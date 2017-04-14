class CreateFleets < ActiveRecord::Migration[5.0]
  def change
    create_table :fleets do |t|
    	t.string :name,	 				 	presence: true
    	t.integer :faction_id, 		presence: true
    	t.integer :points_level,	presence: true
    	t.integer :cost, 				 	presence: true

      t.timestamps
    end
  end
end
