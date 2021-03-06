class Place < ApplicationRecord

# next line added 22 may 17
    belongs_to :user
    
# next line added 26 may 17
    has_many :comments
    
# next line added 1 jun 17 for lesson 39 (challenge)
    has_many :photos
    
# next 2 line added 24 may 17; allows use of geocoding
    geocoded_by :address
    after_validation :geocode
    
# next 2 line added 24 may 17; ensure no one enters blanks for any field, name > 3 chars
    validates :name, presence: true, length: {minimum: 4}
    validates :address, :description, presence: true
end
