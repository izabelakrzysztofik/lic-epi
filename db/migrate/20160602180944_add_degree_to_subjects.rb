class AddDegreeToSubjects < ActiveRecord::Migration
  def change
    add_reference :subjects, :degree, index: true, foreign_key: true
  end
end
