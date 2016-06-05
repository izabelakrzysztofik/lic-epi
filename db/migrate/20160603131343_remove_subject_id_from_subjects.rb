class RemoveSubjectIdFromSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :subject_id, :integer
  end
end
