# file created 19 may 17
class PlacesController < ApplicationController
    def index
# next line added 20 may 17
        @places = Place.all
    end

# next 11 lines added 22 may 17
    def new
        @place = Place.new
    end
    
    def create
        Place.create(place_params)
        redirect_to root_path
    end
    
    private
    
    def place_params
        params.require(:place).permit(:name, :description, :address)
    end

end
