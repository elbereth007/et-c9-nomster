# file created 19 may 17
class PlacesController < ApplicationController
# next line added 22 may 17
    before_action :authenticate_user!, only: [:new, :create]
    
    def index
# next line added 20 may 17
        @places = Place.all
    end

# next 7 lines added 22 may 17
    def new
        @place = Place.new
    end
    
    def create
        current_user.places.create(place_params)
        redirect_to root_path
    end

# next 6 lines added 23 may 17
    def show
        @place = Place.find(params[:id])
    end
    
    def edit
        @place = Place.find(params[:id])
    end
    
    def update
        @place = Place.find(params[:id])
        @place.update_attributes(place_params)
        redirect_to root_path
    end
    
# next 4 lines added 22 may 17
    private
    
    def place_params
        params.require(:place).permit(:name, :description, :address)
    end

end

