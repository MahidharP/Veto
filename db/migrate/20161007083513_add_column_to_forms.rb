class AddColumnToForms < ActiveRecord::Migration
  def change
    add_column :forms, :dob, :date
    add_column :forms, :class, :string
    add_column :forms, :nationality, :string
    add_column :forms, :gender, :string
    add_column :forms, :religion, :string
    add_column :forms, :father_name, :string
    add_column :forms, :father_occupation, :string
    add_column :forms, :father_designation, :string
    add_column :forms, :email, :string
    add_column :forms, :income, :float
    add_column :forms, :phone_number, :string
    add_column :forms, :mother_name, :string
    add_column :forms, :mother_occupation, :string
    add_column :forms, :telephone, :string
  end
end
