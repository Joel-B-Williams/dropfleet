class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
    	t.integer :ship_id, presence: true
    	t.integer :cost,		presence: true
    	
      t.timestamps
    end
  end
end
