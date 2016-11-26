class CreateModels < ActiveRecord::Migration[5.0]
  def change
    create_table :models do |t|
      t.string :name
      t.string :brand
      t.text :notes

      t.timestamps
    end
  end
end
