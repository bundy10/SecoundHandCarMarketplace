class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :maker
      t.integer :price
      t.references :user, foreign_key: true
      t.string :color
      t.string :purchased

      t.timestamps
    end
  end
end
