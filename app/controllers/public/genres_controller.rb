class Public::GenresController < ApplicationController
  
  def show
    @genres = Genre.all.order(created_at: :desc)
    @genre = Genre.find(params[:id])
    #@post = @genre.posts.page(params[:page])
  end
  
  def genre_rank
    #@posts = @genre.posts.order(created_at: :desc)
    @genres = Genre.all
    @genre = Genre.find(params[:id])
    @genre_rankings = @genre.rank_genre
  end
  
end
