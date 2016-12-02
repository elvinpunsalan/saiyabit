class LineItem < ApplicationRecord
  belongs_to :cases
  belongs_to :order
end
