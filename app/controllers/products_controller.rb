class ProductsController < ApplicationController
  def index
    @products = Product.all

    if params[:search]
      @design = Design.where("name LIKE ?", "%#{params[:search]}%").order("created_at DESC")
      @products = Product.where(design: @design)
    end
  end

  def show
  end
end
