class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :category
      t.string :location
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
