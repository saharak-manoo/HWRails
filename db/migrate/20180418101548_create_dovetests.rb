class CreateDovetests < ActiveRecord::Migration[5.1]
  def change
    create_table :dovetests do |t|
      t.string :name
      t.string :email
      t.string :login

      t.timestamps
    end
  end
end
