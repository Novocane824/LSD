class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :name
      t.string :subject
      t.string :content

      t.timestamps
    end
  end
end
