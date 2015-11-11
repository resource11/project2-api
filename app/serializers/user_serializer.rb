#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :current_user #, has_many: :bikes, :favorited_bikes

  def current_user
    scope == object
  end
end
