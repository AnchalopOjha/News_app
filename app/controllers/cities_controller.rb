class CitiesController < ApplicationController
    before_action :authenticate_user!

    def new 
@city=City.new
    end
    def create
        @city=City.new(city_params)
        @city.save
        redirect_to cities_path

    end
    private
    def city_params
        params.require(:city).permit(:name,:state_id)
      end
end
