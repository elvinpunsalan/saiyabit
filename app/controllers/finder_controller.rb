class FinderController < ApplicationController
  def index
    @phone = Device.where(name: 'Phone')

    @phones = Product.where(device: @phone)

    @tablet = Device.where(name: 'Tablet')

    @tablets = Product.where(device: @tablet)
  end

  def phones
    @device = Device.where(name: 'Phone')

    @products = Product.where(device: @device)
  end

  def tablets
    @device = Device.where(name: 'Tablet')

    @products = Product.where(device: @device)
  end

  def laptops
    @device = Device.where(name: 'Laptop')

    @products = Product.where(device: @device)
  end
end