# file created 19 may 17
class PlacesController < ApplicationController
# next line added 22 may 17, modified 23 may 17
    before_action :authenticate_user!, only: [:new, :create, :edit, :update]
    
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

# next 19 lines added 23 may 17
    def show
        @place = Place.find(params[:id])
    end
    
    def edit
        @place = Place.find(params[:id])
        
        if @place.user != current_user
            return render text: 'Not Allowed', status: :forbidden
        end
    end
    
    def update
        @place = Place.find(params[:id])
        if @place.user != current_user
            return render text: 'Not Allowed', status: :forbidden
        end
        @place.update_attributes(place_params)
        redirect_to root_path
    end
    
    def destroy
        @place = Place.find(params[:id])
        @place.destroy
        redirect_to root_path
    end
    
# next 4 lines added 22 may 17
    private
    
    def place_params
        params.require(:place).permit(:name, :description, :address)
    end

end

