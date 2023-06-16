class Admin::UsersController < ApplicationController
    
  def index
    @users = User.page(params[:page])
  end
  
  def post_index
    @user_post = User.find(params[:id])
    @posts = @user_post.posts.page(params[:page])
  end
  
  def comment_index
    @user_comment = User.find(params[:id])
    @comments = @user_comment.comments.page(params[:page])
  end
end
