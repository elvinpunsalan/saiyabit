class AddColumnToCase < ActiveRecord::Migration[5.0]
  def change
    add_column :cases, :device_id, :integer
    add_column :cases, :design_id, :integer
  end
end
