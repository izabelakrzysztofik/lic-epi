class RemoveDegreeIdFromDegrees < ActiveRecord::Migration
  def change
    remove_column :degrees, :degree_id, :integer
  end
end
