class CreateShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|

    	t.string :name, 		   presence: true
    	t.string :scan, 		   presence: true
    	t.string :signature, 	   presence: true
    	t.string :thrust, 		   presence: true
    	t.string :hull, 		   presence: true
    	t.string :armor, 		   presence: true
    	t.string :point_defense,   presence: true
    	t.integer :min_group_size, presence: true
    	t.integer :max_group_size, presence: true
    	t.integer :tonnage_id, 	   presence: true
    	t.integer :faction_id, 	   presence: true

      t.timestamps
    end
  end
end
