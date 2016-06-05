class AddSubjectToCollegeLevels < ActiveRecord::Migration
  def change
    add_reference :college_levels, :subject, index: true, foreign_key: true
  end
end
