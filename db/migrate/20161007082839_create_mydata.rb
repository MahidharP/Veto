class CreateMydata < ActiveRecord::Migration
  def change
    create_table :mydata do |t|
      t.string :student_name
      t.integer :user

      t.timestamps null: false
    end
  end
end
