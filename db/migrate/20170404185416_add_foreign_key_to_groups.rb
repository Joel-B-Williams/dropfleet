class AddForeignKeyToGroups < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :groups, :battlegroups, { name: 'battlegroup_id' }
  end
end
