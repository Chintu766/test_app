class ChintusController <  ApplicationController
  def show
    @chintu = Chintu.new
  end
  def index
     @chintus = Chintu.all
  end
  def new

  end
  def create
    render plain:params[:chintu]
  end
end
