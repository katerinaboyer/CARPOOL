class AddDriveToRiderApplications < ActiveRecord::Migration[5.0]
  def change
    add_column :rider_applications, :driver_name, :string
  end
end
