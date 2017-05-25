class Place < ApplicationRecord

# next line added 22 may 17
    belongs_to :user
# next 2 line added 24 may 17; ensure no one enters blanks for any field, name > 3 chars
    validates :name, presence: true, length: {minimum: 4}
    validates :address, :description, presence: true
end
