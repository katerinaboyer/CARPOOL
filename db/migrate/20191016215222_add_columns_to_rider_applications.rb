class AddColumnsToRiderApplications < ActiveRecord::Migration[5.0]
  def change
    add_column :rider_applications, :street_address, :string
    add_column :rider_applications, :zip_code, :integer
    add_column :rider_applications, :city, :string
    add_column :rider_applications, :number_passengers, :integer
    add_column :rider_applications, :application_received, :timestamp
  end
end
