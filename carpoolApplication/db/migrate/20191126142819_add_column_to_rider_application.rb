class AddColumnToRiderApplication < ActiveRecord::Migration[5.0]
  def change
    add_column :rider_applications, :notes, :text
  end
end
