class Public::UsersController < ApplicationController
   before_action :authenticate_user!
   before_action :is_matching_login_user, only: [:show,:edit,:withdraw]
   before_action :ensure_guest_user, only: [:show,:edit]


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
      flash[:notice] = 'ユーザー情報の編集を成功しました。'
      redirect_to user_path
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

  def ensure_guest_user
    @user = User.find(params[:id])
    if @user.email == "guest@example.com"
      redirect_to user_path(current_user) , notice: "ゲストユーザーはプロフィール編集画面へ遷移できません。"
    end
  end

  def is_matching_login_user
    user = User.find(params[:id])
  unless user.id == current_user.id
    redirect_to root_path
  end
  end

  def user_params
    params.require(:user).permit(:name, :email, :is_deleted, :encrypted_password)
  end
end
