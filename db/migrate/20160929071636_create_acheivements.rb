class CreateAcheivements < ActiveRecord::Migration
  def change
    create_table :acheivements do |t|
        t.integer :institution_id 
      t.string :name
      t.text :details

      t.timestamps null: false
    end
  end
end
