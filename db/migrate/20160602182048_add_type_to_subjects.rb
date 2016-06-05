class AddTypeToSubjects < ActiveRecord::Migration
  def change
    add_reference :subjects, :type, index: true, foreign_key: true
  end
end
