class CreateCsSubjects < ActiveRecord::Migration
  def change
    create_table :cs_subjects do |t|
      t.string :subject

      t.timestamps null: false
    end
  end
end
