class AddDirectorIdToWork < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :dirctor_id, :string
  end
end
