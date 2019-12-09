class AddNameToDriver < ActiveRecord::Migration[5.0]
  def change
    add_column :drivers, :Name, :string
  end
end
