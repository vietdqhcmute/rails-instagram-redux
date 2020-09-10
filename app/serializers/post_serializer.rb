class PostSerializer < ActiveModel::Serializer
  attributes :id, :caption, :image_url, :comments
  belongs_to :author
  has_many :comments

  def author
    object.user
  end
end
