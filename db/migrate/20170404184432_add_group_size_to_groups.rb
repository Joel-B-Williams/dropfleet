class AddGroupSizeToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :group_size, :integer
  end
end
