class CustomersController < ApplicationController
<<<<<<< HEAD
  before_action :set_customer, only: [:show, :edit, :update]
=======
   before_action :set_customer, only: [:show, :edit, :update]
  def show
  @chintus = @customer.chintus
  end
  def index
   @customers = Customer.all
  end
>>>>>>> d64b00f01f609a8f5b718812ae547a9182ba0561
  def new
    @customer = Customer.new
  end
  def edit
<<<<<<< HEAD
  end
  def index
     @customers = Customer.all
  end
  def show
  end
  def update
    if @customer.update(customer_params)
      flash[:notice] = "Your account information was successfully updated"
      redirect_to chintus_path
    else
      render 'edit'
    end
=======
>>>>>>> d64b00f01f609a8f5b718812ae547a9182ba0561
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
<<<<<<< HEAD
  @customer = Customer.find(params[:id])
  end
=======
      @customer = Customer.find(params[:id])
  end

>>>>>>> d64b00f01f609a8f5b718812ae547a9182ba0561
end
