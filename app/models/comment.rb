class Comment < ApplicationRecord
# next 2 lines added 26 may 17 - connects comment with a user and place
    belongs_to :user
    belongs_to :place
    
# next 10 lines added 26 may 17 - to add dropdown for star ratings
    RATINGS = {
        'one star': '1_star',
        'two stars': '2_stars',
        'three stars': '3_stars',
        'four stars': '4_stars',
        'five stars': '5_stars'
    }
    
    def humanized_rating
        RATINGS.invert[self.rating]
    end
end
