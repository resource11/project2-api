class FavoriteBikesController < OpenReadController
  before_action :set_favorite_bike, only: [:update, :destroy]
  # GET /favorite_bikes
  def index

    if current_user
      @favorite_bikes = current_user.favorite_bikes
    else
      @favorite_bikes = FavoriteBike.all
    end

    render json: @favorite_bikes
  end

  # GET /favorite_bikes/1
  def show
    @favorite_bike = FavoriteBike.find(params[:id])

    render json: @favorite_bike
  end

  # POST /favorite_bikes
  def create
    @favorite_bike = current_user.favorite_bikes.new(favorite_bike_params)
    @favorite_bike.save

    if @favorite_bike.save
      render json: @favorite_bike, status: :created, location: @favorite_bike
    else
      render json: @favorite_bike.errors, status: :unprocessable_entity
    end
  end

  # PATCH /favorite_bikes/1
  def update
    @favorite_bike = FavoriteBike.find(params[:id])
    if @favorite_bike.update(favorite_bike_params)
      render json: @favorite_bike
      # head :no_content
    else
      render json: @favorite_bike.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorites/1
  def destroy
    # @favorite_bikes.destroy(@bike)
    @favorite_bike.destroy

    head :no_content
  end

  def set_favorite_bike
    @favorite_bike = current_user.favorite_bikes.find(params[:id])
  end

  def favorite_bike_params
    params.require(:favorite_bike).permit(:favorite, :user_id, :bike_id)
  end

  private :set_favorite_bike, :favorite_bike_params

end
