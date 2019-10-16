class CreateRiderApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :rider_applications do |t|
      t.string :Name
      t.string :Phone

      t.timestamps
    end
  end
end
