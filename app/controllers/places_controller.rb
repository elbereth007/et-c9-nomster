# file created 19 may 17
class PlacesController < ApplicationController
# next line added 22 may 17, modified 23 may 17
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    
    def index
# next line added 20 may 17
        @places = Place.all
    end

# next 7 lines added 22 may 17
    def new
        @place = Place.new
    end
    
    def create
# next 6 lines modified/added 24 may 17 to prevent blank place name
        @place = current_user.places.create(place_params)
        if @place.valid?
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

# next 19 lines added 23 may 17
    def show
        @place = Place.find(params[:id])
    end
    
    def edit
        @place = Place.find(params[:id])
        
        if @place.user != current_user
            return render plain: 'Not Allowed', status: :forbidden
        end
    end
    
    def update
        @place = Place.find(params[:id])
        if @place.user != current_user
            return render plain: 'Not Allowed', status: :forbidden
        end
        @place.update_attributes(place_params)
# next 5 lines modified/added 24 may 17 to prevent blank place name
        if @place.valid?
            redirect_to root_path
        else
            render :edit, status: :unprocessable_entity
        end
    end
    
    def destroy
        @place = Place.find(params[:id])
        if @place.user != current_user
            return render plain: 'Not Allowed', status: :forbidden
        end
        @place.destroy
        redirect_to root_path
    end
    
# next 4 lines added 22 may 17
    private
    
    def place_params
        params.require(:place).permit(:name, :description, :address)
    end

end
