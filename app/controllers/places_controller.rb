# file created 19 may 17
class PlacesController < ApplicationController
# next line added 22 may 17
    before_action :authenticate_user!, only: [:new, :create]
    
    def index
# next line added 20 may 17
        @places = Place.all
    end

# next 11 lines added 22 may 17
    def new
        @place = Place.new
    end
    
    def create
        current_user.places.create(place_params)
        redirect_to root_path
    end
    
    private
    
    def place_params
        params.require(:place).permit(:name, :description, :address)
    end

end

