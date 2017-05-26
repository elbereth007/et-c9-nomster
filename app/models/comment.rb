class Comment < ApplicationRecord
# next 2 lines added 26 may 17 - connects comment with a user and place
    belongs_to :user
    belongs_to :place
end
