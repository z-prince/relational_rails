class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:author_id])
  end

  def new; end

  def create
    author = Author.create(author_params)
    redirect_to '/authors'
  end

  def edit
    @author = Author.find(params[:author_id])
  end

  def update
    artist = Author.find(params[:author_id])
    artist.update(author_params)
    redirect_to '/authors'
  end

  private

  def author_params
    params.permit(:name, :living, :pullitzer_prizes)
  end
end
