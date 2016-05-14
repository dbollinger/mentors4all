class ChangeDataTypesInGradeLevelIds < ActiveRecord::Migration
  def change
    change_column :mentor_grade_levels, :grade_level_id, 'integer USING CAST(grade_level_id AS integer)'
    change_column :educator_grade_levels, :grade_level_id, 'integer USING CAST(grade_level_id AS integer)'
  end
end
