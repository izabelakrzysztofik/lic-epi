class CreateCollegeLevels < ActiveRecord::Migration
  def change
    create_table :college_levels do |t|
      t.integer :college_level_id

      t.timestamps null: false
    end
  end
end
