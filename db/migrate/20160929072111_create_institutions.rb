class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.text :description
      t.text :address
      t.string :email
          t.integer :state_id
          t.integer :city_id
          t.integer :location_id

      t.timestamps null: false
    end
  end
end
