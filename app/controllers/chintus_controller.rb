class ChintusController <  ApplicationController
  def show
    @chintu = Chintu.find(params[:id])
  end
  def index
     @chintus = Chintu.all
  end
  def new

  end
  def create
    @chintu = Chintu.new(params.require(:chintu).permit(:title, :description))
      @chintu.save
      redirect_to @chintu
  end
end
