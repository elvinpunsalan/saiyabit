class AddIndexToCases < ActiveRecord::Migration[5.0]
  def change
    add_index :cases, :device_id
    add_index :cases, :design_id
  end
end
