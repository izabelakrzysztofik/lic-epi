class RemoveDegreeIdIdFromSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :degree_id_id, :integer
  end
end
