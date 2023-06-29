class HomesController < ApplicationController
  def top
    @posts = Post.post_rank
    @genres = Genre.all
  end
  
end
