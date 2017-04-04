class CreateTonnages < ActiveRecord::Migration[5.0]
  def change
    create_table :tonnages do |t|
    	t.string :tonnage, presence: true

      t.timestamps
    end
  end
end
