class AddParamsToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :Make, :string
    add_column :cars, :Model, :string
    add_column :cars, :Year, :integer
    add_column :cars, :Number_of_seats, :integer
    add_column :cars, :License_plate, :string
  end
end
