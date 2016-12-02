class AddCaseAndOrderToLineItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :line_items, :case, foreign_key: true
    add_reference :line_items, :order, foreign_key: true
  end
end
