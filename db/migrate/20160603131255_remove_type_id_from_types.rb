class RemoveTypeIdFromTypes < ActiveRecord::Migration
  def change
    remove_column :types, :type_id, :integer
  end
end
