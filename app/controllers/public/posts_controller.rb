class Public::PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :ensure_guest_user_post, only: [:show,:edit]
    before_action :is_matching_login_user, only: [:edit]
    def new
      @post = Post.new
    end

    def index
      @posts = Post.page(params[:page]).order(created_at: :desc)
      @genres = Genre.all.order(created_at: :desc)
    end

    def create
      @post = Post.new(post_params)
      @post.user_id = current_user.id
      if@post.save
        flash[:notice] = '新規投稿に成功しました。'
        redirect_to posts_path
      else
        render :new
      end
    end

    def edit
      @post_edit = Post.find(params[:id])
    end

    def update
      @post_edit = Post.find(params[:id])
      if@post_edit.update(post_params)
        flash[:notice] = '投稿を編集しました。'
        redirect_to post_path(@post_edit)
      else
        render :edit
      end
    end

    def show
      @post = Post.find(params[:id])
      @post_comment = Comment.new
    end

    def destroy
      post = Post.find(params[:id])
      post.destroy
      flash[:notice] = 'Textを削除しました。'
      redirect_to user_path(current_user)
    end

  private

    def ensure_guest_user_post
      if current_user.email == "guest@example.com"
        redirect_to root_path , notice: "ゲストユーザーはこの画面へ遷移できません。"
      end
    end
    
    def is_matching_login_user
      user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to root_path
    end
    
    end
  def post_params
    params.require(:post).permit(:image,:text_name, :introduction, :review, :price, :genre_id )
  end
end
