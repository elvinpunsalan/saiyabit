class Order < ApplicationRecord
  has_many :line_items
  has_many :cases, through: :line_items
  belongs_to :customer
end
