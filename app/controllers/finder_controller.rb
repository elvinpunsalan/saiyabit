class FinderController < ApplicationController
  def index
    @phones = Product.phones
    @tablets = Product.tablets
    @laptops = Product.laptops
  end

  def phones
    @products = Product.phones.page(params[:page]).per(3)
  end

  def tablets
    @products = Product.tablets.page(params[:page]).per(3)
  end

  def laptops
    @products = Product.laptops.page(params[:page]).per(3)
  end
end
