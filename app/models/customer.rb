class Customer < ApplicationRecord
  has_secure_password

  validates :name, :address, :phone, :email, :password, :postal_code, :city, presence: true
  validates :email, uniqueness: true, email_format: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  belongs_to :province
end
