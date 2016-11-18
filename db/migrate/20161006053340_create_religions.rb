class CreateReligions < ActiveRecord::Migration
  def change
    create_table :religions do |t|
      t.string :name
      t.references :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
