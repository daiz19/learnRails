class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save
          redirect_to restaurants_path
        else
          render 'new'
        end
    end
    
    def show
        @restaurant = Restaurant.find(params[:id])
    end
    
    def restaurant_params
        params[:restaurant].permit!
      end
end
