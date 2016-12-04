class Design < ApplicationRecord
  has_attached_file :image, styles: { medium: '300x300#', thumb: '200x200#' }, default_url: '/images/:style/no-image.png'
  validates_attachment_content_type :image, content_type: %r{\Aimage\/.*\z}

  validates :name, presence: true

  has_many :products
  has_many :devices, through: :products

  attr_accessor :remove_image

  def delete_image
    @remove_image || false
  end

  before_validation { image.clear if remove_image == '1' }
end
