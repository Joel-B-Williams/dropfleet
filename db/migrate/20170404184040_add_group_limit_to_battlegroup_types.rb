class AddGroupLimitToBattlegroupTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :battlegroup_types, :group_limit, :integer
    
  end
end
