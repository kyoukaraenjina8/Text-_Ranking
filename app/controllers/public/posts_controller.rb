class Public::PostsController < ApplicationController
  def new
    @post = Post.new
    
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to post_path
  end

  def show
  end
end

private

  def post_params
    params.require(:post).permit(:text_name, :introduction, :review, :price, :total_score, :read_score, :price_score, :usability_score)
  end