class ChintusController <  ApplicationController
  def show
    @chintu = Chintu.find(params[:id])
  end
  def index
     @chintus = Chintu.all
  end
  def new
     @chintu=Chintu.new
  end
  def edit
      @chintu= Chintu.find(params[:id])
  end
  def create
    @chintu = Chintu.new(params.require(:chintu).permit(:title, :description))
    if @chintu.save
       flash[:notice] = "Article was created successfully."
       redirect_to @chintu
    else
       render 'new'
    end
  end
  def update
    @chintu = Chintu.find(params[:id])
    if @chintu.update(params.require(:chintu).permit(:title, :description))
      flash[:notice] = "Article was updated successfully."
        redirect_to @chintu
    else
      render 'edit'
    end
  end
  def destroy
    @chintu = Chintu.find(params[:id])
    @chintu.destroy
    redirect_to chintus_path
  end
end
