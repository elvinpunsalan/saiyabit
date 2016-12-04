class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def new
    @customer = Customer.new
    @provinces = Province.order(:name).all
  end

  def edit
    @provinces = Province.order(:name).all
  end

  def create
    @customer = Customer.new(customer_params)
    @provinces = Province.all

    if @customer.save
      session[:customer_id] = @customer.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def update
    @provinces = Province.all

    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_customer
    @customer = Customer.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def customer_params
    params.require(:customer).permit(:name, :address, :city, :postal_code,
                                     :phone, :email, :password,
                                     :password_confirmation, :password_digest,
                                     :province_id)
  end
end
