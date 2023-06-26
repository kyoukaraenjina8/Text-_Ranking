class Public::GenresController < ApplicationController
  def show
    @genres = Genre.all.order(created_at: :desc)
    @genre = Genre.find(params[:id])
  end
end
