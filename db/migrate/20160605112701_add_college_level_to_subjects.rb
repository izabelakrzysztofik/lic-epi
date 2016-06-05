class AddCollegeLevelToSubjects < ActiveRecord::Migration
  def change
    add_reference :subjects, :college_level, index: true, foreign_key: true
  end
end
