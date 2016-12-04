class RenameLineItemColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :line_items, :case_id, :product_id
    rename_index :line_items, 'index_line_items_on_case_id', 'index_line_items_on_product_id'
  end
end
