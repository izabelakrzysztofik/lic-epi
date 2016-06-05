class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :subject_id
      t.string :subject_name
      t.text :description

      t.timestamps null: false
    end
  end
end
