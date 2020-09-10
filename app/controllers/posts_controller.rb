class PostsController < ApplicationController
  def index
    render json: Post.all
  end

  def show
    render json: Post.find(params[:id])
  end

  def create
    post = Post.create(post_params)
    render json: post
  end

  private 

  def post_params
    params.require(:post).permit(:user_id, :caption, :image_url)
  end
end
