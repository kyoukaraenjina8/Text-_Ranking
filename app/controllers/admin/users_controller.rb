class Admin::UsersController < ApplicationController
    
  def index
    @users = User.page(params[:page])
  end
  
  def edit
    @admin_edit = User.find(params[:id])
  end
  
  def update
    @admin_edit = current_user
    if @admin_edit.update(user_params)
      redirect_to users_mypage_path
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
  
  def destroy
    post = Post.find(params[:id])
    post.delete
    redirect_to posts_path
  end
  
  def user_params
    params.require(:post).permit(:image,:text_name, :introduction, :review, :price, :total_score, :read_score, :price_score, :usability_score)
  end
end
