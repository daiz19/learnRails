class ModifyDirectorIdToWork < ActiveRecord::Migration[6.0]
  def change
    rename_column :works, :dirctor_id, :director_id
  end
end
