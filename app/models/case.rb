class Case < ApplicationRecord
  belongs_to :design
  belongs_to :device
  has_many :line_items
  has_many :orders, through: :line_items
end
