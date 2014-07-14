class CreateDistances < ActiveRecord::Migration
  def change
    create_table :distances do |t|
      t.integer :posid
      t.string :from
      t.string :to
      t.float :time

      t.timestamps
    end
  end
end
