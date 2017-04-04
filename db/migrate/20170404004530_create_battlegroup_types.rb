class CreateBattlegroupTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :battlegroup_types do |t|
    	t.string :name, presence: true
    	
      t.timestamps
    end
  end
end
