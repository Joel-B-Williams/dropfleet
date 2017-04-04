class CreateFactions < ActiveRecord::Migration[5.0]
  def change
    create_table :factions do |t|
    	t.string :name, presence: true

      t.timestamps
    end
  end
end
