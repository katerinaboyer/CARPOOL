class AddRideStatusToRiderApplications < ActiveRecord::Migration[5.0]
  def change
    add_column :rider_applications, :ride_status, :string
  end
end
