class Province < ApplicationRecord
  validates :name, presence: true
  validates :gst_rate, :pst_rate, :hst_rate, numericality: { allow_nil: true }

  has_many :customers
end
