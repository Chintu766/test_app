class CustomersController < ApplicationController
   before_action :set_customer, only: [:show, :edit, :update]
  def show
  @chintus = Chintus.all
  end
  def index
   @customers = Customer.all
  end
  def new
    @customer = Customer.new
  end
  def edit

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
  def update
    if @customer.update(customer_params)
      flash[:notice] = "Your account information was successfully updated"
      redirect_to @customer
    else
      render 'edit'
    end
  end
  private
  def customer_params
    params.require(:customer).permit(:username, :email, :password)
  end
  def set_customer
      @customer = Customer.find(params[:id])
  end
end
