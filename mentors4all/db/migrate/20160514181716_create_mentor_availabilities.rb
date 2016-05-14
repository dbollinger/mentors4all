class CreateMentorAvailabilities < ActiveRecord::Migration
  def change
    create_table :mentor_availabilities do |t|
      t.integer :mentor_id
      t.integer :availability_id

      t.timestamps null: false
    end
  end
end
