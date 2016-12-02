class Design < ApplicationRecord
  has_attached_file :image, styles: { :medium => "300x300#", :thumb => "200x200#" }
  validates :name, presence: true

  has_many :products
  has_many :devices, through: :products
end
