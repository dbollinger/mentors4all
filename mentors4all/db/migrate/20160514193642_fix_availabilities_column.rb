class FixAvailabilitiesColumn < ActiveRecord::Migration
  def change
    rename_column :availabilities, :type, :assistance_type
  end
end
