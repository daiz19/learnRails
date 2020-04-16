class CreateDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :directors do |t|
      t.string "Director"
      t.string "Country"

      t.timestamps
    end
  end
end
