class AddTelephoneToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :tel, :string
  end
end
