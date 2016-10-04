class CreateInstitutionFacilities < ActiveRecord::Migration
  def change
    create_table :institution_facilities do |t|
      t.integer :institution_id
      t.integer :facility_id

      t.timestamps null: false
    end
  end
end
