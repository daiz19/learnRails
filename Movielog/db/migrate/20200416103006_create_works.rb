class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string "Title"
      t.string "Release Year"
      t.string "Starring"
      t.string "Description"

      t.timestamps
    end
  end
end
