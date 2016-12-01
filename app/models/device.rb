class Device < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  has_many :models
  has_many :cases
  has_many :designs, through: :cases
end
