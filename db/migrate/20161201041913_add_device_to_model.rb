class AddDeviceToModel < ActiveRecord::Migration[5.0]
  def change
    add_reference :models, :device, foreign_key: true
  end
end
