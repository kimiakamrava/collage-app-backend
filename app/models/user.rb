class User < ApplicationRecord
    has_many :user_palettes, :dependent => :destroy
    has_many :palettes, through: :user_palettes, :dependent => :destroy
    has_many :notes, through: :palettes
  
    has_secure_password
  
    validates :username, uniqueness: true
end
