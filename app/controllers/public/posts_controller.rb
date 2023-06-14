class Public::PostsController < ApplicationController
  def new
    @post = Post.new

  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to new_posts_path
  end

  def edit
    @post_edit = Post.find(params[:id])
  end

  def update
    @post_edit = Post.find(params[:id])
    @post_edit.update(post_params)
    redirect_to post_path(@post_edit)

  end
  def index
    @posts = Post.all
    @comments = Comment.all
  end
  
  def rank
    @post_ = Post.find(Post.group(:total_score).order('avg(total_score) desc').pluck(:post_id))
  end

  def show
    @post = Post.find(params[:id])
    @post_comment = Comment.new
  end

  def destroy
    post = Post.find(params[:id])
    post.delete
    redirect_to posts_path
  end

private

  def post_params
    params.require(:post).permit(:image,:text_name, :introduction, :review, :price, :total_score, :read_score, :price_score, :usability_score)
  end
end
