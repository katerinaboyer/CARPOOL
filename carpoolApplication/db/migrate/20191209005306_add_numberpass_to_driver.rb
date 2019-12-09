class AddNumberpassToDriver < ActiveRecord::Migration[5.0]
  def change
    add_column :drivers, :number_passengers, :integer
  end
end
