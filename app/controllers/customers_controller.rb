class CustomersController < ApplicationController
  def index
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new
    if @customer.save(customer_params)
      flash[:notice] = "User successfully registered!"
      render :index
    else
      flash[:alert] = "Error registering user!"
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :phonenumber)
  end
end
