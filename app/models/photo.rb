class Photo < ApplicationRecord
    
# next 2 lines added 1 jun 17 - connects photo with a user and place for lesson 39 (challenge)
    belongs_to :user
    belongs_to :place

# next line added 2 jun 17 - mounts uploader for lesson 39 (challenge)
    mount_uploader :picture, PictureUploader
    
end
