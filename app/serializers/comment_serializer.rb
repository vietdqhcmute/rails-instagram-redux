class CommentSerializer < ActiveModel::Serializer
  attributes :id, :description, :user

  def user
    object.user
  end
end
