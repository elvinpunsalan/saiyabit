class DropDeviceDesignsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :device_designs
  end
end
