class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :student
      t.date :dob
      t.string :class
      t.string :gender
      t.string :nationality
      t.string :religion
      t.string :father_name
      t.string :father_occupation
      t.string :father_designation
      t.string :email
      t.float :income
      t.string :phone_number
      t.string :mother_name
      t.string :mother_occupation
      t.string :telephone

      t.timestamps null: false
    end
  end
end
