class FixAvailabilitiesColumn < ActiveRecord::Migration
  def change
    rename_column :availability, :type, :assistance_type
  end
end
