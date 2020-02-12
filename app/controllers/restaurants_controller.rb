# frozen_string_literal: true

##
# Restaurants Controller
class RestaurantsController < ApplicationController
  def root
    redirect_to action: :index
  end

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    return render :new unless @restaurant.save

    redirect_to action: :index
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(%i[name address phone_number category])
  end
end
