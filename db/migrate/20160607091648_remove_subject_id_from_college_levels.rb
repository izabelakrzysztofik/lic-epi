class RemoveSubjectIdFromCollegeLevels < ActiveRecord::Migration
  def change
    remove_column :college_levels, :subject_id, :integer
  end
end
