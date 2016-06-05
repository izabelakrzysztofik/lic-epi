class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.integer :type_id
      t.string :type_name

      t.timestamps null: false
    end
  end
end
