# firehose track 3, lesson 39 (challenge) - file created 1 jun 17

class PhotosController < ApplicationController
    before_action :authenticate_user!
    
    def create
        @place = Place.find(params[:place_id])
        @place.photos.create(photo_params)
#        @place.photos.create(photo_params.merge(user: current_user))
        redirect_to place_path(@place)
    end
    
    private
    
    def photo_params
        params.require(:photo).permit(:caption)
    end

end
