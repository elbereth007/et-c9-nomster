class Place < ApplicationRecord

# next line added 22 may 17
    belongs_to :user
# next line added 24 may 17; ensure no one enters blank name for place
    validates :name, presence: true
end
