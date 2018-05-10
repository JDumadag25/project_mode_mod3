class Api::V1::RestaurantsController< ApplicationController
  def index
    @restaurants = Restaurant.all
    render json: @restaurants
  end

  def update
  end

  def create
    restaurant = Restaurant.create(restaurant_params)
  end

private

  def restaurant_params
   params.require(:restaurant).permit(:name, :zip_code, :address, :title, :price)
  end
end
