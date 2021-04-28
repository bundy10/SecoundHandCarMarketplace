class AddFieldsToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :state, :string
  end
end
