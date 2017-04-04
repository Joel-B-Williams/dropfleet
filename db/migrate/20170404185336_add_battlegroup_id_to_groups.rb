class AddBattlegroupIdToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :battlegroup_id, :integer
  end
end
