class Admin::PostsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @user_post = User.find(params[:id])
    @posts = @user_post.posts.all
    @user_comment = User.find(params[:id])
    @comments = @user_comment.comments.all
  end


  def show
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to admin_users_path
  end

end
