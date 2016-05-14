class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :contactable_id
      t.string :contactable_type

      t.timestamps null: false
    end
  end
end
