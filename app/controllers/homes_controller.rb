class HomesController < ApplicationController
  def top
    @posts = Post.post_rank
  end
  
end
