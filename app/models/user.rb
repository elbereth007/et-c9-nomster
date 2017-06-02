class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# next line added 22 may 17
  has_many :places
  
# next line added 26 may 17
  has_many :comments
  
end
