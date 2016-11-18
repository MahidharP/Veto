class CreateMyforms < ActiveRecord::Migration
  def change
    create_table :myforms do |t|
      t.integer :user, index: true, foreign_key: true
      t.string :student_name

      t.timestamps null: false
    end
  end
end
