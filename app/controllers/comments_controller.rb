class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    if @comment.save
      flash[:success] = 'Comment was added'
      redirect_to post_path(@post)
    else
      flash.now[:alert] = @comment.errors.full_messages
      render 'posts/show'
    end
  end
  
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    flash[:notice] = "Removed comment"
    redirect_to post_path(@post)
  end
end
