class BikesController < OpenReadController
  before_action :set_bike, only: [:update, :destroy]

  # GET /bikes
  def index

    if current_user
      @bikes = current_user.bikes
    else
      @bikes = Bike.all
    end

    render json: @bikes
  end

  # GET /bikes/1
  def show
    @bike = Bike.find(params[:id])

    render json: @bike
  end

  # POST /bikes
  def create
    @bike = current_user.bikes.new(bike_params)

    if @bike.save
      render json: @bike, status: :created, location: @bike
    else
      render json: @bike.errors, status: :unprocessable_entity
    end
  end

  # PATCH /bikes/1
  def update
    if @bike.update(bike_params)
      head :no_content
    else
      render json: @bike.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bikes/1
  def destroy
    @bike.destroy

    head :no_content
  end

  def set_bike
    @bike = current_user.bikes.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:title, :description)
  end

  private :set_bike, :bike_params
end
