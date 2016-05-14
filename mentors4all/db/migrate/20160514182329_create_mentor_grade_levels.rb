class CreateMentorGradeLevels < ActiveRecord::Migration
  def change
    create_table :mentor_grade_levels do |t|
      t.integer :mentor_id
      t.string :grade_level_id

      t.timestamps null: false
    end
  end
end
