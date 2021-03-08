class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :palettes
  has_many :user_palettes
end
