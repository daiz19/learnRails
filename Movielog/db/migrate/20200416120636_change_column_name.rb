class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :works, :'Release Year', :ReleaseYear 
  end
end
