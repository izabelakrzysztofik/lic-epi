class CreateJoinTableDegreeCollegeLevel < ActiveRecord::Migration
  def change
    create_join_table :degrees, :college_levels do |t|
      # t.index [:degree_id, :college_level_id]
      # t.index [:college_level_id, :degree_id]
    end
  end
end
