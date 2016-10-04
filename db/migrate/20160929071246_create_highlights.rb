class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.integer :institution_id
      t.string :name

      t.timestamps null: false
    end
  end
end
