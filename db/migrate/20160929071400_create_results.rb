class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :institution_id 
      t.integer :students
      t.float :scored

      t.timestamps null: false
    end
  end
end
