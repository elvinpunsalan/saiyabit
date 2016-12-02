class RenameCaseToProduct < ActiveRecord::Migration[5.0]
  def change
    rename_table :cases, :products
  end
end
