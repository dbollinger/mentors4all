class CreateEducatorGradeLevels < ActiveRecord::Migration
  def change
    create_table :educator_grade_levels do |t|
      t.integer :educator_id
      t.string :grade_level_id

      t.timestamps null: false
    end
  end
end
