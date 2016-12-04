class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def index
    @products = Product.all

    if params[:search]
      @design = Design.where("name LIKE ?", "%#{params[:search]}%").order("created_at DESC")
      @products = Product.where(design: @design)
    end
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end
end
