class RestaurantsController < ApplicationController


  def create
    puts "\n\n\n\n\n\n"
    puts params
    puts "\n\n\n\n\n\n"

    restaurant = Restaurant.new
    restaurant.category = params[:category]
    restaurant.location = params[:location]
    restaurant.name = params[:name]
    restaurant.price = params[:price]
    restaurant.save

    redirect_to restaurants_path
  end

  def list
    @restaurants = Restaurant.all
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    redirect_to restaurants_path
  end

  def search
    puts "\n\n\n\n\n\n"
    puts params
    puts "\n\n\n\n\n\n"

    @result = Distance.where("fromW = ? and toW = ?", params[:origin], params[:location]).take
    @restaurant = Restaurant.where("location = ?", params[:location])

    render :result
  end
end