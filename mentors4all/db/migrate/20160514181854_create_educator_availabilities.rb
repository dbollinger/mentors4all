class CreateEducatorAvailabilities < ActiveRecord::Migration
  def change
    create_table :educator_availabilities do |t|
      t.integer :educator_id
      t.integer :availability_id

      t.timestamps null: false
    end
  end
end
