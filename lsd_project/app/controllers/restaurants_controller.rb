class RestaurantsController < ApplicationController


  def create
    restaurant = Restaurant.new
    restaurant.category = params[:category]
    restaurant.location = params[:location]
    restaurant.name = params[:name]
    restaurant.price = params[:price]
    restaurant.avatar = params[:restaurant][:avatar]
    restaurant.save

    redirect_to restaurants_path
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    restaurant = Restaurant.find(params[:id])
    restaurant.category = params[:category]
    restaurant.location = params[:location]
    restaurant.name = params[:name]
    restaurant.price = params[:price]
    restaurant.avatar = params[:restaurant][:avatar]
    restaurant.save

    redirect_to restaurants_path
  end

  def show
    @restaurant = Restaurant.find(params[:id])
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
    @result = Distance.where("fromW = ? and toW = ?", params[:origin], params[:location]).take
    @restaurant = Restaurant.where("location = ?", params[:location])

    render :result
  end

end