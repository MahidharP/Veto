class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :phone_number
    t.integer :institution_id 

      t.timestamps null: false
    end
  end
end
