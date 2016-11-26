class Model < ApplicationRecord
  validates :name, :brand, presence: true

  belongs_to :device
end
