class Admin::PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page])
  end
  def show
    @post = Post.find(params[:id])
  end
  
  def destroy
    post = Post.find(params[:id])
    post.delete
    redirect_to posts_path
  end
end
