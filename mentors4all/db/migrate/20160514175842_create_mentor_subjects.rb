class CreateMentorSubjects < ActiveRecord::Migration
  def change
    create_table :mentor_subjects do |t|
      t.integer :mentor_id
      t.integer :cs_subject_id

      t.timestamps null: false
    end
  end
end
