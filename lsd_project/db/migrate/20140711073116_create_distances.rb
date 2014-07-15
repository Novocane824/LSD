class CreateDistances < ActiveRecord::Migration
  def change
    create_table :distances do |t|
      t.integer :posid
      t.string :fromW
      t.string :toW
      t.float :Wtime

      t.timestamps
    end
  end
end
