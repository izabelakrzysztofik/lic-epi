class AddCollegeLevelNameToCollegeLevels < ActiveRecord::Migration
  def change
    add_column :college_levels, :college_level_name, :string
  end
end
