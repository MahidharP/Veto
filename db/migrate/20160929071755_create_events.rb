class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    t.integer :institution_id 
      t.string :name
      t.date :event_date
      t.text :details

      t.timestamps null: false
    end
  end
end
