# file created 19 may 17
class PlacesController < ApplicationController
    def index
# next line added 20 may 17
        @places = Place.all
    end

# next 3 lines added 22 may 17
    def new
        @place = Place.new
    end

end
