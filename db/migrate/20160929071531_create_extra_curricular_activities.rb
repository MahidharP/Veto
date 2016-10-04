class CreateExtraCurricularActivities < ActiveRecord::Migration
  def change
    create_table :extra_curricular_activities do |t|
        t.integer :institution_id 
      t.string :name
      t.text :details

      t.timestamps null: false
    end
  end
end
