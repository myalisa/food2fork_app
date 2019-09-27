class Api::FoodController < ApplicationController
  def index
    response = HTTP.get("https://www.food2fork.com/api/search?key=f7cad8508326076cad8c94a1c645c981&q=#{params[:search]}&apiKey=#{ENV['API_KEY']}")
    @food = response.parse['food']
    render json: @food
  end
end
