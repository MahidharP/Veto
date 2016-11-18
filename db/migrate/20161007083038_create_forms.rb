class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.integer :user_id
      t.string :student_name

      t.timestamps null: false
    end
  end
end
