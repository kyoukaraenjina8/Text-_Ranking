# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
  before_action :user_state, only: [:create]

  def guest_sign_in
    user = User.guest
    sign_in user
    flash[:notice] = "guestuserでログインしました。"
    redirect_to root_path 
  end
  
  protected

  def user_state
    ## 【処理内容1】 入力されたemailからアカウントを1件取得
    @user = User.find_by(email: params[:user][:email])
    ## アカウントを取得できなかった場合、このメソッドを終了する
    flash[:notice] = "退会済みです。再度ご登録をしてご利用ください。"
    return if !@user
    ## 【処理内容2】 取得したアカウントのパスワードと入力されたパスワードが一致してるかを判別  && !@user.is_deleted末尾のこの表記については、カラムがfalseじゃないことを示し、この条件文全体では、@userオブジェクトが正しいパスワードを持ち、かつ削除されていない場合にのみtrueとなります。それ以外の場合は、falseとなります。削除されていたらリダイレクト。
    if !@user.valid_password?(params[:user][:password]) || @user.is_deleted
      ## 【処理内容3】
      redirect_to new_user_session_path
    end
  end

  # before_action :configure_sign_in_params, only: [:create]
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
