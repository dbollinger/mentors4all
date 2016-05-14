class CreateEducators < ActiveRecord::Migration
  def change
    create_table :educators do |t|
      t.string :school
      t.text :profile_text
      t.text :additional_comments

      t.timestamps null: false
    end
  end
end
