class UserPalette < ApplicationRecord
    belongs_to :user
    belongs_to :palette
    
end
