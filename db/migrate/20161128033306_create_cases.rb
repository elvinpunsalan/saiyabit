class CreateCases < ActiveRecord::Migration[5.0]
  def change
    create_table :cases, &:timestamps
  end
end
