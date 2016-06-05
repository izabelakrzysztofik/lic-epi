class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.integer :degree_id
      t.string :degree_name

      t.timestamps null: false
    end
  end
end
