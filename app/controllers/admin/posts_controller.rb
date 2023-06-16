class Admin::PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page])

  end
  
end
