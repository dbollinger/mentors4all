class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string, :location
      t.string, :employment_status
      t.string, :employment_location
      t.text, :prior_experience
      t.text, :courses_taken
      t.text, :interest_in_mentoring
      t.text, :example_explanation
      t.text :cs_expertise

      t.timestamps null: false
    end
  end
end
