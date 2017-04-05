class CreateBattlegroups < ActiveRecord::Migration[5.0]
  def change
    create_table :battlegroups do |t|
    	t.integer :battlegroup_type_id, presence: true
    	t.integer :cost,								presence: true, default: 0

      t.timestamps
    end
  end
end
