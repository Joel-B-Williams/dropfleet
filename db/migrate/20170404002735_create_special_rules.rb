class CreateSpecialRules < ActiveRecord::Migration[5.0]
  def change
    create_table :special_rules do |t|
    	t.string :name, presence: true
      t.timestamps
    end
  end
end
