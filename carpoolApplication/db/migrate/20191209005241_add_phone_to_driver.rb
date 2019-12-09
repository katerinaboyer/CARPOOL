class AddPhoneToDriver < ActiveRecord::Migration[5.0]
  def change
    add_column :drivers, :Phone, :string
  end
end
