class AddColumnPostiionToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :position, :integer
  end
end
