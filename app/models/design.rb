class Design < ApplicationRecord
  validates :name, :image, presence: true

  has_many :cases
  has_many :devices, through: :cases
end
