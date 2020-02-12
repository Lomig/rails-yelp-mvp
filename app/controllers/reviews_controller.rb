# frozen_string_literal: true

##
# Reviews Controller
class ReviewsController < ApplicationController
  before_action :set_restaurant

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    return render "restaurants/show" unless @review.save

    redirect_to @restaurant
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(%i[content rating])
  end
end
