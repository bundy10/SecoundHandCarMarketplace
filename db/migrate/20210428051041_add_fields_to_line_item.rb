class AddFieldsToLineItem < ActiveRecord::Migration[6.1]
  def change
    add_reference :line_items, :shopping_carts, foreign_key: true
  end
end
