class RemoveCollegeLevelIdFromSubjects < ActiveRecord::Migration
  def change
    remove_reference :subjects, :college_level_id, index: true, foreign_key: true
  end
end
