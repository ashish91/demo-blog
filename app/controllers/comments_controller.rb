class CommentsController < ApplicationController
  def create
    post = Post.find(params[:id])
    post.comments.create(params[:comment].permit(:name, :comment))
    redirect_to posts_path(@post)
  end

  def destroy
    post = Post.find(params[:post_id])
    comment = @post.comments.find(params[:id])
    comment.destroy

    redirect_to posts_path(post)
  end
end
