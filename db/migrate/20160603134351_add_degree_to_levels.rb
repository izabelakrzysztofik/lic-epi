class AddDegreeToLevels < ActiveRecord::Migration
  def change
    add_column :college_levels, :degree_id, :integer
    add_index :college_levels, [:degree_id]
  end
end
