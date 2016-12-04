class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders, &:timestamps
  end
end
