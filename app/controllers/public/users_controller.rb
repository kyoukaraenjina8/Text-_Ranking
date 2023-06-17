class Public::UsersController < ApplicationController
  def show
    @user =User.find(params[:id])
    @user_post = @user.posts
  end
  def edit
    @user_edit = current_user
  end

  def update
    @user_edit = current_user
    if @user_edit.update(user_params)
      redirect_to users_mypage_path
    else
      render 'edit'
    end
  end
  
  def confirm_withdraw
  end

  def withdraw
    @user = current_user
    # is_deletedカラムをtrueに変更することにより削除フラグを立てる
    @user.update(is_deleted: true)
    reset_session
    flash[:alert] = "退会処理を実行いたしました"
    redirect_to root_path
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :is_deleted,)
  end
end
