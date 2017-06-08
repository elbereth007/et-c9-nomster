# firehose track 3, lesson 39 (challenge) - file created 1 jun 17

class PhotosController < ApplicationController
    before_action :authenticate_user!
    
    def create
        @place = Place.find(params[:place_id])
#        byebug                                  # stops execution, shows state
        @place.photos.create(photo_params)
#        @place.photos.create(photo_params.merge(user: current_user))
        redirect_to place_path(@place)
    end
    
# next lines added so only place creator can destroy photos
    def destroy
        @place = Place.find(params[:id])
        if @place.user != current_user
            return render plain: 'Not Allowed', status: :forbidden
        end
        @place.photos.destroy(photo_params)
        redirect_to root_path
    end


    private
    
    def photo_params
        params.require(:photo).permit(:picture, :caption)
    end

end
