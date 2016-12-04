class FinderController < ApplicationController
  def index
    @phones = Product.phones
    @tablets = Product.tablets
    @laptops = Product.laptops
  end

  def phones
    @products = Product.phones
  end

  def tablets
    @products = Product.tablets
  end

  def laptops
    @products = Product.laptops
  end
end