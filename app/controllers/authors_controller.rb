class AuthorsController < ApplicationController
  def index
    @authors = Author.short_time
  end

  def show
    @author = Author.find(params[:id])
  end

  def new; end

  def create
    author = Author.create(author_params)
    redirect_to '/authors'
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    artist = Author.find(params[:id])
    artist.update(artist_params)
    redirect_to '/authors'
  end

  private

  def author_params
    params.permit(:name, :living, :pullitzer_prizes)
  end
end
