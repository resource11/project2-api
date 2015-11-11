#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :current_user
  has_many :bikes, :favorite_bikes, :favorites

  def current_user
    scope == object
  end
end
