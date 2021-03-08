class Palette < ApplicationRecord
    has_many :user_palettes, :dependent => :destroy
    has_many :users, through: :user_palettes, :dependent => :destroy
    has_many :notes
end
