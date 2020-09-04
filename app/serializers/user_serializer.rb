class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :avatar_url

  def username
    "Nothing here"
  end
end
