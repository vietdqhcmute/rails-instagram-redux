class CommentsController < ApplicationController
  def index
    render json: Comment.all
  end

  def show
    render json: Comment.find(params[:id])
  end

  def create
    comment = Comment.create(comment_params)
    render json: comment.post
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :description)
  end
end
