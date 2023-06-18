class Admin::UsersController < ApplicationController

  def index
    @users = User.page(params[:page])
  end

  def edit
    @admin_edit = User.find(params[:id])
  end

  def update
    @admin_edit = User.find(params[:id])
    if @admin_edit.update(user_params)
      redirect_to admin_users_path
    else
      render 'edit'
    end
  end

  def post_index
    @user_post = User.find(params[:id])
    @posts = @user_post.posts.page(params[:page])
    @user_comment = User.find(params[:id])
    @comments = @user_comment.comments.page(params[:page])
  end
  
  def withdraw
    @user = current_user
    # is_deletedカラムをtrueに変更することにより削除フラグを立てる
    @user.update(is_deleted: true)
    reset_session
    flash[:alert] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  def destroy
    post = Post.find(params[:id])
    post.delete
    redirect_to posts_path
  end
  
  def destroy_comment
    destroy_comment = Comment.find(params[:id])
    destroy_comment.delete
    redirect_to posts_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :is_deleted, :encrypted_password)
  end
end
