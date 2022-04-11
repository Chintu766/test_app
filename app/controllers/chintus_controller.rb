class ChintusController <  ApplicationController
   before_action :set_chintu, only: [:show, :edit, :update, :destroy]
  def show
  end
  def index
     @chintus = Chintu.all
  end
  def new
     @chintu=Chintu.new
  end
  def edit

  end
  def create
    @chintu = Chintu.new(chintu_params)
      @chintu.customer = Customer.first 
    if @chintu.save
       flash[:notice] = "Article was created successfully."
       redirect_to @chintu
    else
       render 'new'
    end
  end

  def update

    if @chintu.update(chintu_params)
      flash[:notice] = "Article was updated successfully."
        redirect_to @chintu
    else
      render 'edit'
    end
  end

  def destroy
    @chintu.destroy
    redirect_to chintus_path
  end

  private

  def set_chintu
    @chintu = Chintu.find(params[:id])
  end
  def chintu_params
    params.require(:chintu).permit(:title, :description)
  end
end
