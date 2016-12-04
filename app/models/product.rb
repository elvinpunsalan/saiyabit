class Product < ApplicationRecord
  belongs_to :design
  belongs_to :device
  has_many :line_items
  has_many :orders, through: :line_items

  scope :phones, -> { joins(:device).where('name = ?', 'Phone') }
  scope :tablets, -> { joins(:device).where('name = ?', 'Tablet') }
  scope :laptops, -> { joins(:device).where('name = ?', 'Laptop') }
end
