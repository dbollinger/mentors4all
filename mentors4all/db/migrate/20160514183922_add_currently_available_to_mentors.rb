class AddCurrentlyAvailableToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :currently_available, :boolean, :default => true
  end
end
