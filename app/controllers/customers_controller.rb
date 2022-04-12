class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end
  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:notice] = "Your account information was successfully updated"
      redirect_to chintus_path
    else
      render 'edit'
    end
  end
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:notice] = "Welcome to the Alpha Blog #{@customer.username}, you have successfully signed up"
      redirect_to chintus_path
    else
      render 'new'
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:username, :email, :password)
  end
end
