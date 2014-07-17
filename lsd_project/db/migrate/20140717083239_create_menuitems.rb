class CreateMenuitems < ActiveRecord::Migration
  def change
    create_table :menuitems do |t|
      t.string :item
      t.float :price

      t.timestamps
    end
  end
end
