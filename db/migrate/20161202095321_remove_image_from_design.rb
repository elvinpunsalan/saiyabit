class RemoveImageFromDesign < ActiveRecord::Migration[5.0]
  def change
    remove_column :designs, :image, :string
  end
end
