class CreateEducatorSubjects < ActiveRecord::Migration
  def change
    create_table :educator_subjects do |t|
      t.integer :educator_id
      t.integer :cs_subject_id

      t.timestamps null: false
    end
  end
end
