class AddTagToSubjects < ActiveRecord::Migration
  def change
    add_reference :subjects, :tag, index: true, foreign_key: true
  end
end
