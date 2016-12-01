class Model < ApplicationRecord
  validates :name, :brand, presence: true
  validates :name, uniqueness: true

  belongs_to :device
end
