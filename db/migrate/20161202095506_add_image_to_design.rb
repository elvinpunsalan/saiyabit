class AddImageToDesign < ActiveRecord::Migration[5.0]
  def change
    add_column :designs, :image, :attachment
  end
end
