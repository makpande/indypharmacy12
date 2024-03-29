class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params.merge(post_id: params[:post_id]))
  end

  def upvote
    Comment.upvote(params[:comment_id])
    @comment = Comment.find(params[:comment_id])
    render :create
  end

  def comment_params
    params.require(:comment).permit(:body, :author, :parent_id)
  end
end
