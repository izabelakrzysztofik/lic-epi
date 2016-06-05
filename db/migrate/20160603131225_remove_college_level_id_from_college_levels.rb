class RemoveCollegeLevelIdFromCollegeLevels < ActiveRecord::Migration
  def change
    remove_column :college_levels, :college_level_id, :integer
  end
end
