class AddUserIdToFleets < ActiveRecord::Migration[5.0]
  def change
    add_column :fleets, :user_id, :integer
  end
end
