class CreateMentorContacts < ActiveRecord::Migration
  def change
    create_table :mentor_contacts do |t|
      t.integer :mentor_id
      t.integer :educator_id

      t.timestamps null: false
    end
  end
end
